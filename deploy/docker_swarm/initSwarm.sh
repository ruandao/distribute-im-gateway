#!/bin/bash

docker swarm leave --force
docker swarm init --advertise-addr 127.0.0.1
