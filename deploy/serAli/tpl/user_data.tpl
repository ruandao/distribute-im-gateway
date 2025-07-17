#!/bin/bash
set -x
export ENV=prod

yum update -y
yum install -y docker git
usermod -a -G docker {{ target_user }}
id {{ target_user }}
newgrp docker
systemctl enable docker.service
systemctl start docker.service

