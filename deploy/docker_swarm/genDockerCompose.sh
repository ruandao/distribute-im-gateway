#!/bin/bash -l
set -x
. bin/all.sh

# if need_build_img ruandao/im-auth:latest src/Auth pkg ;then
#     docker build --no-cache -t ruandao/im-auth:latest -f src/Auth/Dockerfile .
# fi


cd deploy/docker_swarm
echo "ENV: $ENV" 
export UID=`id -u`
export GID=`id -g`
yaml-merge .img.yml d.${ENV}.yml > docker-compose.yml

