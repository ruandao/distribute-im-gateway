#!/bin/bash


# 定义要操作的目录路径
directory="./data/monitor/grafana/data"

# 检查目录是否存在
if [ -d "$directory" ]; then
    echo "目录 $directory 存在，准备删除..."
    rm -rf "$directory"
    echo "目录 $directory 已删除。"
else
    echo "目录 $directory 不存在。"
fi

# 删除对应容器
docker rm -f grafana-test

# 创建目录
# 创建目录
echo "创建目录 $directory ..."
mkdir -p "$directory"
echo "目录 $directory 创建成功。"


docker compose up -d grafana-test
