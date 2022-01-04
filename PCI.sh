#! /usr/bin/env bash
#########################################################################
# File Name: PCI.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2022年01月04日 星期二 22时47分53秒

# 此程序的功能是：
#########################################################################

#lspci 列出所有 PCI 总线，以及与 PCI 总线相连的所有设备的详细信息，比如 VGA 适配器、显卡、网络适配器、usb 端口、SATA 控制器等。

#linux 中lspci命令 - 列出 PCI 设备
#我们使用 lspci 命令显示有关系统中的 PCI 总线以及与其连接的设备的信息：
jack@linux:$ lspci


 # GPU相关命令
# 查看显卡信息
lspci | grep -i vga

# 若使用NVIDIA显卡
lspci | grep -i nvidia

# 查看显卡详情
lspci -v -s 00:0f.0

# 查看显存使用情况
nvidia-smi

# 周期性输出显卡使用情况
watch -n 10 nvidia-smi

#网卡
#查看网卡硬件信息
lspci | grep -i 'eth'