#!/bin/bash
set -x

echo << EOT >> /etc/bashrc
export NODE_TYPE="${ NodeType }"
export Swarm_Manager_ID="${ Swarm_Manager_ID }"
export MANAGER_IP="${ MANAGER_IP }"

export ENV=prod

EOT

yum install -y epel-release
yum update -y
yum install -y docker git ansible screen
usermod -a -G docker {{ target_user }}
id {{ target_user }}
newgrp docker
systemctl enable docker.service
systemctl start docker.service

echo "docker: `which docker`"