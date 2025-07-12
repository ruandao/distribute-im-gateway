#!/bin/bash
set -x
export NODE_TYPE="${ NodeType }"
export Swarm_Manager_ID="${ Swarm_Manager_ID }"
export MANAGER_IP="${ MANAGER_IP }"

export ENV=prod

yum update -y
yum install -y docker git
usermod -a -G docker ec2-user
id ec2-user
newgrp docker
systemctl enable docker.service
systemctl start docker.service

echo "docker: `which docker`"