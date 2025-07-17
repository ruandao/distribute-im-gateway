# # 创建SSH密钥对
# resource "alicloud_key_pair" "ssh_key" {
#   key_pair_name   = var.key_pair_name
#   # public_key = file("~/.ssh/terraform-aws.pub")  # 指定你的公钥文件路径
# }
data "alicloud_key_pairs" "existing" {
  name_regex = "^${var.key_pair_name}$"
}
