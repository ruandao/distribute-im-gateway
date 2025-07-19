#!/bin/bash
set -x

bash deploy/docker_swarm/pullAllImages.sh
docker stack rm $dockerStackOpt im
docker stack deploy $dockerStackOpt -c deploy/docker_swarm/docker-compose.yml im