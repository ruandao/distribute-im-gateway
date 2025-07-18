#!/bin/bash
set -x

echo << EOT >> /etc/bashrc
export NODE_TYPE="${ NodeType }"
export Swarm_Manager_ID="${ Swarm_Manager_ID }"
export MANAGER_IP="${ MANAGER_IP }"
export ENV=prod

EOT


echo "docker: `which docker`"