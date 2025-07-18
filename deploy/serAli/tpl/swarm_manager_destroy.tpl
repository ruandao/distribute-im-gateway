#!/bin/bash -l
set -x
Swarm_Node_ID="${ Swarm_Node_ID }"


# 检查是否为管理节点
if docker node ls &>/dev/null; then
  # 获取节点 ID
  NODE_ID=$(docker info -f '$Swarm_Node_ID')
  # 检查是否为最后一个管理节点
  MANAGER_COUNT=$(docker node ls -f 'role=manager' -q | wc -l)
  if [ $MANAGER_COUNT -gt 1 ]; then
    # 降级管理节点
    docker node demote $NODE_ID || true
    sleep 5
  fi
  # 退出 Swarm
  docker swarm leave --force
fi