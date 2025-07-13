#!/bin/bash
. bin/all.sh

if need_build_img ruandao/im-auth:latest src/Auth pkg ;then
    docker build --no-cache -t ruandao/im-auth:latest -f src/Auth/Dockerfile .
fi


# cd deploy/docker_swarm

# yaml-merge .img.yml d.prod.yml > docker-compose.yml


# docker stack deploy -c docker-compose.yml im