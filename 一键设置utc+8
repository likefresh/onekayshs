#!/bin/bash

# 设置时区为上海
sudo timedatectl set-timezone Asia/Shanghai

# 启用时间同步
sudo timedatectl set-ntp true

# 同步硬件时钟
sudo hwclock --systohc

# 安装chrony（更现代的时间同步工具）
sudo apt-get update
sudo apt-get install -y chrony

# 启动chronyd服务
sudo systemctl start chronyd
sudo systemctl enable chronyd

# 强制同步时间
sudo chronyc makestep

# 验证设置
echo -e "\n当前时区设置："
timedatectl

echo -e "\n当前系统时间："
date

echo -e "\n当前硬件时间："
sudo hwclock --show

echo -e "\nchronyd服务状态："
sudo systemctl status chronyd | grep Active
