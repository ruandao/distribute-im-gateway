resource "aws_instance" "db" {
    ami               =  var.ami
    availability_zone = "${var.region}a"
    key_name          = "terraform-aws"
    depends_on        = [aws_instance.swarm_manager]
    subnet_id         = aws_subnet.subnet.id
    security_groups   = [aws_security_group.sg.id]  # 直接关联安全组


    instance_type     = "t3.micro"
    tags = {
        Name       = "swarm-db"
        NodeType   = "db"  # Terraform 标签
    }

    user_data = templatefile("tpl/user_data_worker_create.tpl", {
        NodeType    = "db"
        Swarm_Manager_ID = aws_instance.swarm_manager.id
        MANAGER_IP = aws_instance.swarm_manager.private_ip
    })

    connection {
        type        = "ssh"
        user        = "ec2-user"  # 根据你的系统修改用户名
        private_key = file("~/.ssh/terraform-aws")  # 私钥路径
        host        = self.public_ip  # 使用实例的公网IP
        timeout     = "5m"  # 设置超时时间
    }

    # 上传单个文件
    provisioner "file" {
        source      = "scripts/swarm_join_worker.sh"  # 本地文件路径
        destination = "/home/ec2-user/swarm_join_worker.sh"  # 远程目标路径
    }
    provisioner "remote-exec" {
      inline = [ 
        "cat /home/ec2-user/swarm_join_worker.sh",
        "sed -i 's/__MANAGER_IP__/${aws_instance.swarm_manager.public_ip}/g' /home/ec2-user/swarm_join_worker.sh"
       ]
    }

    # 可以考虑采用 remote-exec scp, 如果在意密钥问题的话
    provisioner "local-exec" {
        command = <<EOT
            ssh -o StrictHostKeyChecking=no -i ~/.ssh/terraform-aws ec2-user@${aws_instance.swarm_manager.public_ip} " until test -f /home/ec2-user/swarm_token.json; do sleep 1; done; cat /home/ec2-user/swarm_token.json" | \
            ssh -o StrictHostKeyChecking=no -i ~/.ssh/terraform-aws ec2-user@${self.public_ip} "cat > /home/ec2-user/swarm_token.json"
            ssh -o StrictHostKeyChecking=no -i ~/.ssh/terraform-aws ec2-user@${self.public_ip} "sudo bash /home/ec2-user/swarm_join_worker.sh"
        EOT
    }
    
    # provisioner "remote-exec" {
        # inline = [ 
        #     "echo `whoami`;",
        #     "until test -f /home/ec2-user/swarm_token.json; do sleep 1; done;",
        #     "echo '${local.swarm_token}' > /home/ec2-user/swarm_token.json",
        #     "sudo bash /home/ec2-user/swarm_join_worker.sh"
        #  ]
    #     when = create
    # }

    provisioner "local-exec" {
      when = destroy
      command = templatefile("tpl/swarm_worker_destroy.tpl", {})
    }
}



output "dbSerPublicIP" {
  depends_on = [ aws_instance.db ]
  value = join("\n", [
    "[dbSer]",
    aws_instance.db.public_ip,    
    "",
  ])
  description = "节点公网IP地址"
}



resource "null_resource" "dbSerENVInit" {
  depends_on = [ aws_instance.db ]
  provisioner "local-exec" {
    command = <<EOT
      cat << EOF >> ${path.module}/../ansible-playbooks/inventory/awsenv.ini
[dbSer]
${aws_instance.db.public_ip}
[dbSer:vars]
ansible_user=ec2-user
ansible_ssh_private_key_file=~/.ssh/terraform-aws

EOF
EOT
  }
}

resource "null_resource" "dbSerSSHConfig" {
  depends_on = [ aws_instance.db ]
  provisioner "local-exec" {
    command = <<EOT
    cat << 'EOF' >> ${path.module}/../_ssh/config
Host dbSer
${format("Hostname %s", aws_instance.db.public_ip)}
User ec2-user
IdentityFile ~/.ssh/terraform-aws

EOF
EOT
  }
}


