#!/bin/bash
# diy-part2.sh 在 feeds install 之后，编译之前执行
echo "DIY Part2 start"
# 复制你的files补丁到源码根目录
cp -r $GITHUB_WORKSPACE/files/* ./
