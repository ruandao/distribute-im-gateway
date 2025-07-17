
resource "null_resource" "cleanSSHConfig" {
  provisioner "local-exec" {
    command = "echo 'Host *\n\tServerAliveInterval 60 # 每60秒发送一次心跳\n\tServerAliveCountMax 3 # 连续3次无响应才断开(即180秒无响应才断开)\n' > '${path.module}/../_ssh/config'"
  }
}

resource "local_file" "cleanSerENVInit" {
  filename = "${path.module}/../ansible-playbooks/inventory/awsenv.ini"
  content = ""
}
resource "local_file" "cleanAllNodesENVInit" {
  filename = "${path.module}/../ansible-playbooks/inventory/allNodes.ini"
  content = <<EOF
[allNodes:vars]
ansible_user=${var.target_user}
ansible_ssh_private_key_file=~/distribute-im-gateway/deploy/_ssh/terraform-aws
[allNodes]
EOF
}
resource "local_file" "cleanSwarmManagerENVInit" {
  filename = "${path.module}/../ansible-playbooks/inventory/swarm_manager.ini"
  content = <<EOF
[swarm_manager:vars]
ansible_user=${var.target_user}
ansible_ssh_private_key_file=~/distribute-im-gateway/deploy/_ssh/terraform-aws
node_type=manager
[swarm_manager]
EOF
}
resource "local_file" "cleanSwarmWorkerENVInit" {
  filename = "${path.module}/../ansible-playbooks/inventory/swarm_worker.ini"
  content = <<EOF
[swarm_worker:vars]
ansible_user=${var.target_user}
ansible_ssh_private_key_file=~/distribute-im-gateway/deploy/_ssh/terraform-aws
[swarm_worker]
EOF
}
resource "local_file" "cleanBIZ_DBENVInit" {
  filename = "${path.module}/../ansible-playbooks/inventory/biz_db.ini"
  content = <<EOF
[biz_db:vars]
ansible_user=${var.target_user}
ansible_ssh_private_key_file=~/distribute-im-gateway/deploy/_ssh/terraform-aws
node_type=biz_db
[biz_db]
EOF
}
resource "local_file" "cleanBIZ_RedisENVInit" {
  filename = "${path.module}/../ansible-playbooks/inventory/biz_redis.ini"
  content = <<EOF
[biz_redis:vars]
ansible_user=${var.target_user}
ansible_ssh_private_key_file=~/distribute-im-gateway/deploy/_ssh/terraform-aws
node_type=biz_redis
[biz_redis]
EOF
}
resource "local_file" "cleanBIZ_AuthENVInit" {
  filename = "${path.module}/../ansible-playbooks/inventory/biz_auth.ini"
  content = <<EOF
[biz_auth:vars]
ansible_user=${var.target_user}
ansible_ssh_private_key_file=~/distribute-im-gateway/deploy/_ssh/terraform-aws
node_type=biz_auth
[biz_auth]
EOF
}
