#!/bin/bash
set -x
export ENV=prod


systemctl enable docker.service
systemctl start docker.service

