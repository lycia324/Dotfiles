#!/bin/bash

# 脚本说明：依次尝试启动传入的多个命令，直到有一个成功启动

if [ $# -eq 0 ]; then
    echo "用法: $0 <command1> [command2] [command3] ..."
    echo "示例: $0 firefox chromium-browser google-chrome"
    exit 1
fi

for cmd in "$@"; do
    echo "正在尝试启动: $cmd"
    if $cmd; then
        echo "成功启动: $cmd"
        exit 0
    else
        echo "启动失败: $cmd (退出状态: $?)"
    fi
done

echo "所有应用均未能成功启动。"
exit 1
