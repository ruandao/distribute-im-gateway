#!/bin/bash
set -x
export NODE_TYPE="${ NodeType }"
export InstanceIP="${ InstanceIP }"
export ENV=prod

yum update -y
yum install -y docker git
usermod -a -G docker ec2-user
id ec2-user
newgrp docker
systemctl enable docker.service
systemctl start docker.service


echo "Instance IP: $InstanceIP $NODE_TYPE"
docker info | grep Swarm
docker swarm init --advertise-addr $InstanceIP
docker node update --label-add node-type=$NODE_TYPE $hostname

MANAGER_TOKEN="$(docker swarm join-token manager -q)"
WORKER_TOKEN="$(docker swarm join-token worker -q)"

echo "{
    \"MANAGER_TOKEN\": \"$MANAGER_TOKEN\",
    \"WORKER_TOKEN\": \"$WORKER_TOKEN\"
}"  > /home/ec2-user/swarm_token.json
chown ec2-user:ec2-user /home/ec2-user/swarm_token.json
echo "docker: `which docker`"
