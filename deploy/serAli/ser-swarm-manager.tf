
resource "alicloud_instance" "swarm_manager" {
    count = var.instance_count["swarm_manager"]
    instance_name         = "terraform-manager"
    internet_max_bandwidth_out = var.max_bandwidth_out
    system_disk_category  = var.instance_disk_category
    # associate_public_ip_address = true

    security_groups       = [alicloud_security_group.main.id]
    vswitch_id            = alicloud_vswitch.main.id
    key_name              = data.alicloud_key_pairs.existing.ids.0


    availability_zone     = var.availability_zone
    image_id              = local_file.image_id.content
    instance_type         = var.instance_type_2u4g

    # 抢占式配置（从变量传入或使用默认值）
    # instance_charge_type         = var.instance_charge_type
    # spot_strategy                = var.spot_strategy
    # spot_price_limit             = var.spot_price_limit


    tags = {
      Name       = "swarm-manager"
      NodeType   = "manager"  # Terraform 标签
    }

    private_ip = var.ip_manager

    user_data = templatefile("tpl/user_data_manager_create.tpl", {
        NodeType    = "manager"
        InstanceIP  = var.ip_manager
        target_user = var.target_user
        target_user_home = var.target_user_home
    })

    connection {
        type        = "ssh"
        user        = "root"  # 根据你的系统修改用户名
        private_key = file("${path.module}/../_ssh/terraform-aws") # 私钥路径
        host        = self.public_ip  # 使用实例的公网IP
        timeout     = "5m"  # 设置超时时间
    }

    # 真实环境，请采用IAM之类的方式
    provisioner "file" {
        source      = "${path.module}/../_ssh/terraform-aws"
        destination = "${var.target_user_home}/.ssh/terraform-aws"  # 远程目标路径
        # mode        = "0600"
    }
    provisioner "remote-exec" {
      inline = [ 
        "chmod 0600 ${var.target_user_home}/.ssh/terraform-aws",
       ]
    }
    
    provisioner "local-exec" {
      when = destroy
      command = templatefile("tpl/swarm_manager_destroy.tpl", {
        Swarm_Node_ID: self.id
      })
    }
    
}

output "mSerPublicIP" {
  depends_on = [ alicloud_instance.swarm_manager ]
  value = join("\n", [
                    "[mSer]",
                    join("\n", [for idx, manager in alicloud_instance.swarm_manager:  
                                "${idx}-${manager.public_ip}-${manager.private_ip}"
                                ])
                    ])
  description = "节点公网IP地址"
}

resource "null_resource" "mSerENVInit" {
  depends_on = [ alicloud_instance.swarm_manager ]
  provisioner "local-exec" {
    command = <<EOT
cat << EOF >> ${path.module}/../ansible-playbooks/inventory/allNodes.ini
${join("\n", [for manager in alicloud_instance.swarm_manager: manager.public_ip])}
EOF

cat << EOF >> ${path.module}/../ansible-playbooks/inventory/swarm_manager.ini
${join("\n", [for manager in alicloud_instance.swarm_manager: manager.public_ip])}
EOF

cat << EOF >> ${path.module}/../ansible-playbooks/inventory/awsenv.ini
[mSer]
${join("\n", [for manager in alicloud_instance.swarm_manager: manager.public_ip])}
[mSer:vars]
ansible_user=${var.target_user}
ansible_ssh_private_key_file=~/.ssh/terraform-aws
node_type=biz_manager
target_user_home=${var.target_user_home}

EOF

EOT
  }
}

resource "null_resource" "mSerSSHConfig" {
  depends_on = [ alicloud_instance.swarm_manager ]
  provisioner "local-exec" {
    command = <<EOT
    cat << 'EOF' >> ${path.module}/../_ssh/config
    ${
    join("\n", [for idx, swarm_manager in alicloud_instance.swarm_manager: 
      join("\n", [
        format("Host mSer-%s", idx),
        format("Hostname %s", swarm_manager.public_ip),
        format("User %s", var.target_user),
        "IdentityFile ~/.ssh/terraform-aws"
      ])
    ])
    }
EOF
EOT
  }
}