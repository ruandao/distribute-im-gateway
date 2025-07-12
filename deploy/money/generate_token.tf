
# # 依赖服务器A,生成并捕获token
# resource "null_resource" "generate_token" {
#     depends_on = [aws_instance.swarm_manager]

#     # 远程连接服务器A的配置
#     connection {
#         type        = "ssh"
#         host        = aws_instance.swarm_manager.public_ip
#         user        = "ec2-user"
#         private_key = file("~/.ssh/terraform-aws")
#     }


#     # 将远程命令的输出（token）保存到本地临时文件
#     provisioner "local-exec" {
#         command = <<EOT
#             echo "" > ./output/swarm_token.json
#             ssh -o StrictHostKeyChecking=no -i ~/.ssh/terraform-aws ec2-user@${aws_instance.swarm_manager.public_ip} " until test -f /home/ec2-user/swarm_token.json; do sleep 1; done; cat /home/ec2-user/swarm_token.json" | \
#             cat > ./output/swarm_token.json 2> ./output/ssh_error.log || (cat ./output/ssh_error.log && exit 1);
# EOT
#     }
    
# }

# # 读取本地文件中的token（作为敏感数据）
# data "local_file" "token" {
#   filename = "./output/swarm_token.json"
#   depends_on = [null_resource.generate_token]
# }

