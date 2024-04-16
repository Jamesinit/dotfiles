#!/bin/bash

# 要检查的软件包列表
packages="python3-dev python3-pip python3-setuptools"

# 循环遍历检查每个软件包是否已经安装
for pkg in $packages; do
    if ! dpkg -l | grep -q "^ii  $pkg "; then
        echo "$pkg 未安装，准备安装..."
        sudo apt install $pkg
    else
        echo "$pkg 已经安装"
    fi
done

pip3 install thefuck

