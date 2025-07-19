#!/bin/bash

cat deploy/docker_swarm/docker-compose.yml | grep image: | awk '{print $2}' | xargs -I {} docker pull {}