#!/bin/bash
cd money

echo "项目初始化中: ${pwd}"
terraform init

echo "资源创建中..."
terraform apply -auto-approve
echo "资源创建完成"

cleanup() {
    echo "资源清理"
    terraform destroy -auto-approve
}

trap cleanup EXIT
# 无限循环保持脚本运行
while true; do
    sleep 1  # 每秒检查一次信号
done