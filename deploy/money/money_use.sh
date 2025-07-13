#!/bin/bash
cd deploy/money

echo "项目初始化中: ${pwd}"
terraform init

echo "资源创建中..."
terraform apply -auto-approve
echo "资源创建完成"
ansible-playbook ../ansible-playbooks/playbook.yml

cleanup() {
    echo "资源清理"
    terraform destroy -auto-approve
}

trap cleanup EXIT

# 60分钟后自动释放服务器资源或者收到中断指令后释放服务器资源
# 计算60分钟后的时间戳
target_time=$(( $(date +%s) + 3600 ))

# 等待直到目标时间或收到中断信号
while true; do
    current_time=$(date +%s)
    if [ $current_time -ge $target_time ]; then
        echo "10 hours elapsed. Executing task."
        cleanup
        exit 0
    fi
    sleep 1
done