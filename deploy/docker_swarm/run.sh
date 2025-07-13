#!/bin/bash
. bin/all.sh

# if need_build_img ruandao/im-auth:latest src/Auth pkg ;then
#     docker build --no-cache -t ruandao/im-auth:latest -f src/Auth/Dockerfile .
# fi


cd deploy/docker_swarm
echo "ENV: $ENV" 
yaml-merge .img.yml d.${ENV}.yml > docker-compose.yml


# docker buildx imagetools inspect mysql:8.4


docker stack rm --detach=false im
# 清理 mysql 数据
rm -rf ~/distribute-im-gateway/deploy/data/mysql/volumes
mkdir ~/distribute-im-gateway/deploy/data/mysql/volumes
# sleep 3
docker stack deploy -c docker-compose.yml im

# docker service logs im_mysql-test