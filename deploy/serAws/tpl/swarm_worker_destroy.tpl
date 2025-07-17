#!/bin/bash
set -x

if docker info | grep -q 'Swarm: active'; then
  docker swarm leave --force
fi