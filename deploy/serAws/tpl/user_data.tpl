#!/bin/bash
set -x
export ENV=prod

yum update -y
yum install -y docker git
usermod -a -G docker ec2-user
id ec2-user
newgrp docker
systemctl enable docker.service
systemctl start docker.service

