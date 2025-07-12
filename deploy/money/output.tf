
# output "eip_public_ip" {
#   value = join("\n", [
#     "[dbSer]",
#     aws_instance.db.public_ip,
#     "",
#     "[redisSer]",
#     aws_instance.redis.public_ip,
#     "",
#     "[mSer]",
#     aws_instance.swarm_manager.public_ip,    
#     "",
#   ])
#   description = "节点公网IP地址"
# }


# resource "local_file" "ip_output" {
#   filename = "${path.module}/../ansible-playbooks/inventory/awsenv.ini"
#   content = join("\n", [
#     "[dbSer]",
#     aws_instance.db.public_ip,
#     "",
#     "[dbSer:vars]",
#     "ansible_user=ec2-user",
#     "ansible_ssh_private_key_file=~/.ssh/terraform-aws",
#     "",
    
#     "[redisSer]",
#     aws_instance.redis.public_ip,
#     "",
#     "[dbSer:vars]",
#     "ansible_user=ec2-user",
#     "ansible_ssh_private_key_file=~/.ssh/terraform-aws",
#     "",
    
#     "[mSer]",
#     aws_instance.swarm_manager.public_ip,    
#     "",
#     "[dbSer:vars]",
#     "ansible_user=ec2-user",
#     "ansible_ssh_private_key_file=~/.ssh/terraform-aws",
#     "",        
#   ])
# }

# resource "null_resource" "appendSSHConfig" {
#   provisioner "local-exec" {
#     command = <<EOT
#       echo "${
#           join("\n", [
#             "Host dbSer",
#             format("Hostname %s", aws_instance.db.public_ip),
#             "User ec2-user",
#             "IdentityFile ~/.ssh/terraform-aws",
#             "",
#           ])
#       }" >> "${path.module}/../_ssh/config"
#     EOT
#   }
# }

# resource "local_file" "ssh_conf" {
#   filename = "${path.module}/../_ssh/config"
#   content = join("\n", [
#     "Host dbSer",
#     format("Hostname %s", aws_instance.db.public_ip),
#     "User ec2-user",
#     "IdentityFile ~/.ssh/terraform-aws",
#     "",
    
#     "Host redisSer",
#     format("Hostname %s", aws_instance.redis.public_ip),
#     "User ec2-user",
#     "IdentityFile ~/.ssh/terraform-aws",    
#     "",
    
#     "Host mSer",
#     format("Hostname %s", aws_instance.swarm_manager.public_ip),
#     "User ec2-user",
#     "IdentityFile ~/.ssh/terraform-aws",        
#   ])
# }

