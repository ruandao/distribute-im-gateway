resource "aws_instance" "auth" {
    ami               =  var.ami
    availability_zone = "${var.region}a"
    key_name          = "terraform-aws"
    depends_on        = [aws_instance.swarm_manager]
    subnet_id           = aws_subnet.subnet.id
    security_groups     = [aws_security_group.sg.id]  # 直接关联安全组


    instance_type     = "t3.micro"
    tags = {
        Name       = "swarm-auth"
        NodeType   = "auth"  # Terraform 标签
    }

    user_data = templatefile("tpl/user_data_worker_create.tpl", {
        NodeType    = "auth"
        Swarm_Manager_ID = aws_instance.swarm_manager.id
        MANAGER_IP = aws_instance.swarm_manager.private_ip
    })
    # 真实环境，请采用IAM之类的方式
    provisioner "file" {
        source      = "../_ssh/terraform-aws"
        destination = "/home/ec2-user/.ssh/terraform-aws"  # 远程目标路径
    }
    provisioner "remote-exec" {
      inline = [ 
        "chmod 0600 ~/.ssh/terraform-aws",
       ]
    }
    connection {
        type        = "ssh"
        user        = "ec2-user"  # 根据你的系统修改用户名
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
  depends_on = [ aws_instance.auth ]
  value = join("\n", [
    "[authSer]",
    aws_instance.auth.public_ip,    
    "",
  ])
  description = "节点公网IP地址"
}

resource "null_resource" "authSerENVInit" {
  depends_on = [ aws_instance.auth ]
  provisioner "local-exec" {
    command = <<EOT
cat << EOF >> ${path.module}/../ansible-playbooks/inventory/allNodes.ini
${aws_instance.auth.public_ip}
EOF

cat << EOF >> ${path.module}/../ansible-playbooks/inventory/swarm_worker.ini
${aws_instance.auth.public_ip}
EOF

cat << EOF >> ${path.module}/../ansible-playbooks/inventory/biz_auth.ini
${aws_instance.auth.public_ip}
EOF

cat << EOF >> ${path.module}/../ansible-playbooks/inventory/awsenv.ini
[authSer]
${aws_instance.auth.public_ip}
[authSer:vars]
ansible_user=ec2-user
ansible_ssh_private_key_file=~/.ssh/terraform-aws
node_type=biz_auth

EOF
EOT
  }
}

resource "null_resource" "authSerSSHConfig" {
  depends_on = [ aws_instance.auth ]
  provisioner "local-exec" {
    command = <<EOT
    cat << 'EOF' >> ${path.module}/../_ssh/config
Host authSer
${format("Hostname %s", aws_instance.auth.public_ip)}
User ec2-user
IdentityFile ~/.ssh/terraform-aws

EOF
EOT
  }
}


