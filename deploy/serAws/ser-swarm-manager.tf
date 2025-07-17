
resource "aws_instance" "swarm_manager" {
    ami               =  var.ami
    availability_zone = "${var.region}a"
    key_name          = "terraform-aws"
    subnet_id           = aws_subnet.subnet.id
    security_groups     = [aws_security_group.sg.id]  # 直接关联安全组
    private_ip = var.ip_manager

    
    instance_type     = "t3.micro"
    tags = {
        Name       = "swarm-manager"
        NodeType   = "manager"  # Terraform 标签
    }

    user_data = templatefile("tpl/user_data_manager_create.tpl", {
        NodeType    = "manager"
        InstanceIP  = var.ip_manager
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
      command = templatefile("tpl/swarm_manager_destroy.tpl", {
        Swarm_Node_ID: self.id
      })
    }
    
}

output "mSerPublicIP" {
  depends_on = [ aws_instance.swarm_manager ]
  value = join("\n", [
    "[mSer]",
    aws_instance.swarm_manager.public_ip,
    aws_instance.swarm_manager.private_ip,
    "",
  ])
  description = "节点公网IP地址"
}

resource "null_resource" "mSerENVInit" {
  depends_on = [ aws_instance.swarm_manager ]
  provisioner "local-exec" {
    command = <<EOT
cat << EOF >> ${path.module}/../ansible-playbooks/inventory/allNodes.ini
${aws_instance.swarm_manager.public_ip}
EOF

cat << EOF >> ${path.module}/../ansible-playbooks/inventory/swarm_manager.ini
${aws_instance.swarm_manager.public_ip}
EOF

cat << EOF >> ${path.module}/../ansible-playbooks/inventory/awsenv.ini
[mSer]
${aws_instance.swarm_manager.public_ip}
[mSer:vars]
ansible_user=ec2-user
ansible_ssh_private_key_file=~/.ssh/terraform-aws
node_type=biz_manager

EOF

EOT
  }
}

resource "null_resource" "mSerSSHConfig" {
  depends_on = [ aws_instance.swarm_manager ]
  provisioner "local-exec" {
    command = <<EOT
    cat << 'EOF' >> ${path.module}/../_ssh/config
Host mSer
${format("Hostname %s", aws_instance.swarm_manager.public_ip)}
User ec2-user
IdentityFile ~/.ssh/terraform-aws

EOF
EOT
  }
}