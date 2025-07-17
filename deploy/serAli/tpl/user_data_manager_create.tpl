#!/bin/bash
set -x
export NODE_TYPE="${ NodeType }"
export InstanceIP="${ InstanceIP }"

echo << EOT >> /etc/bashrc
export NODE_TYPE="${ NodeType }"
export InstanceIP="${ InstanceIP }"
export ENV=prod

EOT

yum update -y
yum install -y docker git ansible screen
usermod -a -G docker {{ target_user }}
id {{ target_user }}
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
}"  > {{ target_user_home }}/swarm_token.json
chown {{ target_user }}:{{ target_user }} {{ target_user_home }}/swarm_token.json
echo "docker: `which docker`"
