#!/bin/bash

docker swarm leave --force
docker swarm init --advertise-addr 127.0.0.1
#   docker swarm join --token SWMTKN-1-14afu3gmvt1af7hlxwwhzx2id0k61rp0dx5mdymcledlxwo1fa-dpp1qw0ptmzzasklwogpulist 127.0.0.1:2377