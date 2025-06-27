#!/bin/bash


function convert_pb_to_service() {
    local file="$1"
    file=$(echo "$file" | sed 's;/\./;/;g')

    local dName="$(dirname "$file")"
    local filename="$(basename "$file" .proto)"
    local output_dir="${dName}/../service/gen"
    mkdir -p $output_dir
    output_dir=$(realpath $output_dir)

    echo "正在转换: $filename $file -> $output_dir"
    
    protoc -I=$dName --go_out=$output_dir --go-grpc_out=$output_dir $file
    
    if [ $? -eq 0 ]; then
        echo "成功: $output_dir 已生成"
    else
        echo "错误: 转换 $file 失败" >&2
    fi
}


export -f convert_pb_to_service

# 遍历当前目录下的所有 .drawio 文件
for d in `ls src`;do
    cd src/$d
    rm -rf service/gen
    find . -name "*.proto" -print0 | xargs -0 -P 4 -I {} bash -c 'convert_pb_to_service "$0"' {}
    cd ../../
done


echo "所有 proto 文件转换完成!"

