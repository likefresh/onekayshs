#!/bin/bash

# 创建目录（如果不存在）
mkdir -p ~/.config/pip

# 创建或修改 pip.conf 文件
echo "[global]
break-system-packages = true" > ~/.config/pip/pip.conf

# 添加环境变量到 .bashrc
echo "export PIP_BREAK_SYSTEM_PACKAGES=1" >> ~/.bashrc

# 立即应用环境变量
export PIP_BREAK_SYSTEM_PACKAGES=1

echo "PEP 668 规范已关闭"
echo "现在你可以直接使用 pip install 安装包了"
