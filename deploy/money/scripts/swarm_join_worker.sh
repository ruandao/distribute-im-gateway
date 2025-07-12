#!/bin/bash
set -x
FILE="/home/ec2-user/swarm_token.json"

# 等待文件超过10字节，最多等待1200秒（超时退出）
timeout=1200
interval=1
elapsed=0
fileSize() {
  ls -al "$1" 2>/dev/null | awk '{print $5}' || echo 0
}

while [ $(fileSize $FILE) -le 10 ]; do
  if [ $elapsed -ge $timeout ]; then
    echo "超时:文件未超过10字节"
    exit 1
  fi
  echo "等待文件超过10字节(当前已等待 $elapsed 秒)..."
  sleep $interval
  elapsed=$((elapsed + interval))
done

while true; do
  if [ -S /var/run/docker.sock ]; then
    if docker info >/dev/null 2>&1; then
      echo "Docker daemon is ready"
      break
    fi
  fi
  sleep 1
done

echo "文件已超过10字节,大小为 $(fileSize $FILE) 字节"
cat "$FILE"
TOKEN=`cat "$FILE" | grep "WORKER_TOKEN" | awk -F'"' '{print $4}'`
docker swarm join --token $TOKEN __MANAGER_IP__:2377