#!/bin/bash
set -x
LOG_FILE=_output/runDockerStack.sh.log
exec 3>&1 4>&2
# 重定向输出到日志文件和终端
exec > >(tee "$LOG_FILE") 2>&1


bash deploy/data/mysql/clean.sh

export dockerStackOpt="--detach=false"

bash deploy/docker_swarm/initSwarm.sh
bash deploy/docker_swarm/genDockerCompose.sh
bash deploy/docker_swarm/runDockerStack.sh
docker service logs im_mysql-test