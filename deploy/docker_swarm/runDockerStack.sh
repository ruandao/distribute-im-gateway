#!/bin/bash
set -x

docker stack rm $dockerStackOpt im
docker stack deploy $dockerStackOpt -c deploy/docker_swarm/docker-compose.yml im