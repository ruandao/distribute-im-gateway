#!/bin/bash

getIP() {
  # macOS 系统
  if command -v ifconfig &>/dev/null && ifconfig en0 &>/dev/null; then
    ifconfig en0 | awk '/inet / {print $2}'
    return
  fi

  # Linux 系统（优先使用 ip 命令）
  if command -v ip &>/dev/null; then
    # 获取非回环地址的第一个 IPv4 地址
    ip -4 addr show | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | grep -v '^127\.' | head -n1
    return
  fi

  # 备用方案：使用 ifconfig
  if command -v ifconfig &>/dev/null; then
    ifconfig | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | grep -v '^127\.' | head -n1
    return
  fi

  echo "无法获取内网 IP" >&2
  return 1
}

INTERNAL_IP=$(getIP)
# echo "内网 IP: $INTERNAL_IP"
