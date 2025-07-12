
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
    "",
  ])
  description = "节点公网IP地址"
}

resource "null_resource" "mSerENVInit" {
  depends_on = [ aws_instance.swarm_manager ]
  provisioner "local-exec" {
    command = <<EOT
      cat << EOF >> ${path.module}/../ansible-playbooks/inventory/awsenv.ini
[mSer]
${aws_instance.swarm_manager.public_ip}
[mSer:vars]
ansible_user=ec2-user
ansible_ssh_private_key_file=~/.ssh/terraform-aws

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