#!/bin/bash
echo "开始安装软件..."

apt-add-repository --yes --update ppa:ansible/ansible
apt-get update -y

apt install -y software-properties-common
apt install -y git screen ansible

#
apt-get install -y ca-certificates curl
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
chmod a+r /etc/apt/keyrings/docker.asc
bash ${target_user_home}/ubuntu_install_docker.sh 
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin



usermod -a -G docker ${target_user}
id ${target_user}
newgrp docker

systemctl enable docker.service
systemctl start docker.service

echo "install docker done" >> ~/hi

echo "Installation completed at $(date)" > ${target_user_home}/software_installation.log
