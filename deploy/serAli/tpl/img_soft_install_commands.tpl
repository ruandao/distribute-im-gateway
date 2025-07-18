#!/bin/bash
set -x
echo "开始安装软件..."
LOG_FILE="process.log"
# 保存标准输出和标准错误
exec 3>&1 4>&2
# 重定向输出到日志文件和终端
exec > >(tee -a "$LOG_FILE") 2>&1

apt-add-repository --yes --update ppa:ansible/ansible
apt-get update -y

apt install -y software-properties-common
apt install -y git ansible

#
apt-get install -y ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL http://mirrors.cloud.aliyuncs.com/docker-ce/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc
bash ${target_user_home}/ubuntu_install_docker.sh 
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin



usermod -a -G docker ${target_user}
id ${target_user}
systemctl enable docker.service
systemctl start docker.service

echo "install docker done"

echo "Installation completed at $(date)" > software_installation.log

exit 0