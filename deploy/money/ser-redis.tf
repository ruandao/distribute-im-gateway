resource "aws_instance" "redis" {
    ami               =  var.ami
    availability_zone = "${var.region}a"
    key_name          = "terraform-aws"
    depends_on        = [aws_instance.swarm_manager]
    subnet_id           = aws_subnet.subnet.id
    security_groups     = [aws_security_group.sg.id]  # 直接关联安全组


    instance_type     = "t3.micro"
    tags = {
        Name       = "swarm-redis"
        NodeType   = "redis"  # Terraform 标签
    }

    user_data = templatefile("tpl/user_data_worker_create.tpl", {
        NodeType    = "redis"
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

    # # 上传单个文件
    # provisioner "file" {
    #     source      = "scripts/swarm_join_worker.sh"  # 本地文件路径
    #     destination = "/home/ec2-user/swarm_join_worker.sh"  # 远程目标路径
    # }
    
    # provisioner "remote-exec" {
    #   inline = [ 
    #     "cat /home/ec2-user/swarm_join_worker.sh",
    #     "sed -i 's/__MANAGER_IP__/${aws_instance.swarm_manager.public_ip}/g' /home/ec2-user/swarm_join_worker.sh"
    #    ]
    # }
    
    # provisioner "local-exec" {
    #     command = <<EOT
    #     ssh -o StrictHostKeyChecking=no -i ~/.ssh/terraform-aws ec2-user@${aws_instance.swarm_manager.public_ip} " until test -f /home/ec2-user/swarm_token.json; do sleep 1; done; cat /home/ec2-user/swarm_token.json" | \
    #     ssh -o StrictHostKeyChecking=no -i ~/.ssh/terraform-aws ec2-user@${self.public_ip} "cat > /home/ec2-user/swarm_token.json"
    #     ssh -o StrictHostKeyChecking=no -i ~/.ssh/terraform-aws ec2-user@${self.public_ip} "sudo bash /home/ec2-user/swarm_join_worker.sh"
    #     EOT
    # }
    # # 真实环境，请采用IAM之类的方式
    # provisioner "file" {
    #     source      = "../_ssh/terraform-aws"
    #     destination = "/home/ec2-user/.ssh/terraform-aws"  # 远程目标路径
    # }
    # provisioner "remote-exec" {
    #   inline = [ 
    #     "chmod 0600 ~/.ssh/terraform-aws",
    #     "ssh -o StrictHostKeyChecking=no -i ~/.ssh/terraform-aws ec2-user@${aws_instance.swarm_manager.public_ip} 'docker node update --label-add node-type=${self.tags.NodeType} ${self.public_ip}' ",
    #    ]
    # }
    provisioner "local-exec" {
      when = destroy
      command = templatefile("tpl/swarm_worker_destroy.tpl", {})
    }
}


output "redisSerPublicIP" {
  depends_on = [ aws_instance.redis ]
  value = join("\n", [
    "[redisSer]",
    aws_instance.redis.public_ip,    
    "",
  ])
  description = "节点公网IP地址"
}

resource "null_resource" "redisSerENVInit" {
  depends_on = [ aws_instance.redis ]
  provisioner "local-exec" {
    command = <<EOT
cat << EOF >> ${path.module}/../ansible-playbooks/inventory/allNodes.ini
${aws_instance.redis.public_ip}
EOF

cat << EOF >> ${path.module}/../ansible-playbooks/inventory/swarm_worker.ini
${aws_instance.redis.public_ip}
EOF

cat << EOF >> ${path.module}/../ansible-playbooks/inventory/biz_redis.ini
${aws_instance.redis.public_ip}
EOF

cat << EOF >> ${path.module}/../ansible-playbooks/inventory/awsenv.ini
[redisSer]
${aws_instance.redis.public_ip}
[redisSer:vars]
ansible_user=ec2-user
ansible_ssh_private_key_file=~/.ssh/terraform-aws

EOF
EOT
  }
}

resource "null_resource" "redisSerSSHConfig" {
  depends_on = [ aws_instance.redis ]
  provisioner "local-exec" {
    command = <<EOT
    cat << 'EOF' >> ${path.module}/../_ssh/config
Host redisSer
${format("Hostname %s", aws_instance.redis.public_ip)}
User ec2-user
IdentityFile ~/.ssh/terraform-aws

EOF
EOT
  }
}


