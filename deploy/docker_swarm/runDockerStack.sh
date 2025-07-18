#!/bin/bash
set -x

# docker buildx imagetools inspect mysql:8.4


docker stack rm im
# sleep 3
docker stack deploy -c deploy/docker_swarm/docker-compose.yml im

# docker service logs im_mysql-test