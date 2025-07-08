#!/bin/bash
cd deploy

# 生成从 AA001 到 AA256 的用户ID并创建SQL插入语句
output_file="data/mysql/template.users/init.01.users.sql"
TEMPLATE="data/mysql/template.users/users.template.sql"
# # 清空或创建输出文件
# touch $output_file
> $output_file

echo "USE wechat;" > $output_file

# 循环生成用户ID并写入SQL语句
for ((i=0; i<256; i++)); do
    # 格式化为3位数字，不足补零
    printf -v user_id "%03d" $i

    # 使用 sed 进行变量替换
    sed -e "s/users_000/users_$user_id/g" "$TEMPLATE" >> "$output_file"

    echo "已生成文件: $output_file"
done

echo "已成功生成 $output_file 文件"    