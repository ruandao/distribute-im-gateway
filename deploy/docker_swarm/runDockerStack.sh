#!/bin/bash
set -x

# docker buildx imagetools inspect mysql:8.4


docker stack rm im
# 清理 mysql 数据
rm -rf ~/distribute-im-gateway/deploy/data/mysql/volumes
mkdir ~/distribute-im-gateway/deploy/data/mysql/volumes
# sleep 3
docker stack deploy -c deploy/docker_swarm/docker-compose.yml im

# docker service logs im_mysql-test