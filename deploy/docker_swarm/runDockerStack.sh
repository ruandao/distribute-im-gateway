#!/bin/bash
set -x

export UID=`id -u`
export GID=`id -g`
docker stack rm $dockerStackOpt im
docker stack deploy $dockerStackOpt -c deploy/docker_swarm/docker-compose.yml im