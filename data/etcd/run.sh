#!/bin/bash
set -x

# 检查data.txt文件是否存在
if [ -f "data/etcd/data.txt" ]; then
    echo "开始导入初始数据..."
    
    # 从data.txt导入数据到etcd
    while IFS= read -r line; do
        # 分割每行数据为键值对（格式：key=value）
        key="${line%%=*}"
        value="${line#*=}"
        echo "$key $value"
        # 使用etcdctl导入数据
        docker exec etcd etcdctl put "$key" "$value"
    done < "data/etcd/data.txt"
    
    echo "数据导入完成！"
else
    echo "未找到 data/etcd/data.txt 文件，跳过数据导入。"
fi




docker compose up -d etcdService
