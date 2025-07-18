resource "alicloud_instance" "auth" {
    count = var.instance_count["auth"]
    instance_name         = "terraform_auth"
    internet_max_bandwidth_out = var.max_bandwidth_out
    system_disk_category  = var.instance_disk_category
    # associate_public_ip_address = true

    security_groups       = [alicloud_security_group.main.id]
    vswitch_id            = alicloud_vswitch.main.id
    key_name              = data.alicloud_key_pairs.existing.ids.0


    availability_zone     = var.availability_zone
    image_id              = local_file.image_id.content
    instance_type         = var.instance_type_2u4g
    resource_group_id = var.resource_group_id
    # 抢占式配置（从变量传入或使用默认值）
    instance_charge_type         = var.instance_charge_type
    spot_strategy                = var.spot_strategy
    spot_price_limit             = var.spot_price_limit

    tags = {
      Name       = "swarm-auth"
      NodeType   = "auth"  # Terraform 标签
    }

    depends_on        = [alicloud_instance.swarm_manager]

    user_data = templatefile("tpl/user_data_worker_create.tpl", {
        NodeType    = "auth"
        Swarm_Manager_ID = alicloud_instance.swarm_manager[0].id
        MANAGER_IP = alicloud_instance.swarm_manager[0].private_ip
        target_user = var.target_user
        target_user_home = var.target_user_home
    })
    # 真实环境，请采用IAM之类的方式
    provisioner "file" {
        source      = "../_ssh/terraform-aws"
        destination = "${var.target_user_home}/.ssh/terraform-aws"  # 远程目标路径
    }
    provisioner "remote-exec" {
      inline = [ 
        "chmod 0600 ${var.target_user_home}/.ssh/terraform-aws",
       ]
    }
    connection {
        type        = "ssh"
        user        = "root"  # 根据你的系统修改用户名
        private_key = file("~/.ssh/terraform-aws")  # 私钥路径
        host        = self.public_ip  # 使用实例的公网IP
        timeout     = "5m"  # 设置超时时间
    }

    provisioner "local-exec" {
      when = destroy
      command = templatefile("tpl/swarm_worker_destroy.tpl", {})
    }
}


output "authSerPublicIP" {
  depends_on = [ alicloud_instance.auth ]
  value = join("\n", [
                    "[authSer]",
                    join("\n", [for idx, auth in alicloud_instance.auth:  
                                "${idx}-${auth.public_ip}-${auth.private_ip}"
                                ])
                    ])
  description = "节点公网IP地址"
}

resource "null_resource" "authSerENVInit" {
  depends_on = [ alicloud_instance.auth ]
  provisioner "local-exec" {
    command = <<EOT
cat << EOF >> ${path.module}/../ansible-playbooks/inventory/allNodes.ini
${join("\n", [for auth in alicloud_instance.auth: auth.public_ip])}
EOF

cat << EOF >> ${path.module}/../ansible-playbooks/inventory/swarm_worker.ini
${join("\n", [for auth in alicloud_instance.auth: auth.public_ip])}
EOF

cat << EOF >> ${path.module}/../ansible-playbooks/inventory/biz_auth.ini
${join("\n", [for auth in alicloud_instance.auth: auth.public_ip])}
EOF

cat << EOF >> ${path.module}/../ansible-playbooks/inventory/awsenv.ini
[authSer]
${join("\n", [for auth in alicloud_instance.auth: auth.public_ip])}
[authSer:vars]
ansible_user=${var.target_user}
ansible_ssh_private_key_file=~/.ssh/terraform-aws
target_user_home=${var.target_user_home}
node_type=biz_auth

EOF
EOT
  }
}

resource "null_resource" "authSerSSHConfig" {
  depends_on = [ alicloud_instance.auth ]
  provisioner "local-exec" {
    command = <<EOT
    cat << 'EOF' >> ${path.module}/../_ssh/config
    ${
    join("\n", [for idx, auth in alicloud_instance.auth: 
      join("\n", [
        format("Host authSer-%s", idx),
        format("Hostname %s", auth.public_ip),
        format("User %s", var.target_user),
        "IdentityFile ~/.ssh/terraform-aws"
      ])
    ])
    }
EOF
EOT
  }
}


