#!/bin/bash
set -x
# $1 位要创建的服务器供应商的对应目录
cd $1/output

FILE="./swarm_token.json"

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
  echo "等待文件超过10字节(当前已等待 $elapsed 秒) fileSize: $(fileSize $FILE)..."
  ls -al $FILE
  sleep $interval
  elapsed=$((elapsed + interval))
done

TOKEN=`cat $FILE | grep "WORKER_TOKEN" | awk -F'"' '{print $4}'`
kill -9 $(lsof -ti:2377)
echo $TOKEN
ManagerIP=$(grep -A1 mSer ../../_ssh/config | grep Hostname | awk '{print $2}')
docker swarm leave --force
docker swarm join --token $TOKEN $ManagerIP:2377 # 由于要加入成为管理节点的话,需要各种其他管理节点也能够连接到本机,处理起来比较麻烦,但是如果只是运行prometheus 的话,那么压力就小很多
docker node update --label-add node-type=monitor cpu
docker info 2>&1 | grep Swarm