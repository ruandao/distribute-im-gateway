#!/bin/bash -l
set -x

if docker info | grep -q 'Swarm: active'; then
  docker swarm leave --force
fi