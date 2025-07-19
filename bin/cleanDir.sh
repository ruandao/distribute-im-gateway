#!/bin/bash

function cleanDir() {
  directory=$1
  # 检查目录是否存在
  if [ -d "$directory" ]; then
      echo "目录 $directory 存在，准备删除..."
      rm -rf "$directory"
      echo "目录 $directory 已删除。"
  else
      echo "目录 $directory 不存在。"
      # 创建目录
      # 创建目录
      echo "创建目录 $directory ..."
      mkdir -p "$directory"
      echo `pwd`/$directory
      ls -al `pwd`/$directory
      echo "目录 $directory 创建成功。"
  fi
}
