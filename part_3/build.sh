#!/bin/bash

# 依次执行 make clean 和 make
echo "===== 开始清理 ====="
make clean

if [ $? -ne 0 ]; then
    echo "make clean 失败，退出"
    exit 1
fi

echo ""
echo "===== 开始编译 ====="
make

if [ $? -ne 0 ]; then
    echo "make 失败"
    exit 1
fi

echo ""
echo "===== 编译完成 ====="