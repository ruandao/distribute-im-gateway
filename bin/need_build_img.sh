#!/bin/bash

ctx_change() {
    # 获取目录参数（空格分割的列表）
    local dirs=("$@")
    local has_changes=false
    # echo "参数数量: ${#dirs[@]}"

    # 如果没有提供参数，默认检查整个仓库
    if [ ${#dirs[@]} -eq 0 ]; then
        if [ -n "$(git diff --cached --name-only)" ]; then
            echo "整个仓库有变化"
            has_changes=true
        fi
    else
        # 检查每个指定目录
        for dir in "${dirs[@]}"; do
            if [ -n "$(git diff --cached --name-only "$dir")" ]; then
                echo "目录 '$dir' 有变化"
                has_changes=true
                break
            fi
        done
    fi

    # 根据检查结果决定是否编译
    if [ "$has_changes" = true ]; then
        # echo "开始编译..."
        return 0
    else
        # echo "所有检查的目录均无变化，跳过编译"
        return 1
    fi
}

imgExist() {
    #!/bin/bash
    target=$1

    # 判断镜像是否存在
    if [[ "$(docker images -q $target 2> /dev/null)" == "" ]]; then
        echo "镜像 $target 不存在"
        return 1
    else
        echo "镜像 $target 已存在，跳过构建"
        return 0
        
    fi
}

need_build_img() {
    local target=$1
    

    if ctx_change "${@:2}" ;then
        echo "上下文目录发生变化: ${@:2}"
        echo "需要编译"
        return 0
    fi

    if ! imgExist "$target";then
        echo "目标镜像不存在: $target"
        echo "需要编译"
        return 0
    fi    

    
    echo "不需要编译"
    return 1
}

# need_build_img ruandao/im-auth:latest src
# ctx_change src pkg