#! /usr/bin/env bash
#########################################################################
# File Name: HardWare.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2022年01月04日 星期二 22时49分22秒

# 此程序的功能是：
#########################################################################

:<<EOF

#linux hwinfo命令 - 硬件探针
#我们可以快速探测 Linux 服务器或桌面中的硬件:
# 查找关于 Linux 机器的详细信息
hwinfo
# 只显示摘要 #
hwinfo --short
# 查看所有磁盘 #
hwinfo --disk
# 得到一个概述 #
hwinfo --short --block
# 找一个特定的磁盘 #
hwinfo --disk --only /dev/sda
# 尝试 4 个显卡端口的监视器数据 #
hwprobe=bios.ddc.ports=4 hwinfo --monitor
# 限制信息到特定的设备 #
hwinfo --short --cpu --disk --listmd --gfxcard --wlan --printer

#linux  id中 - 显示用户信息
#显示给定 USER 名称的 Linux 用户和组信息。如果省略用户名，则显示当前用户的信息：
id

#linux lsblk中 - 列表块存储设备
#所有 Linux 块设备均提供对硬件设备的缓冲访问，并允许根据配置读取和写入块。Linux 块设备具有名称。例如，对于 NVMe 是 /dev/nvme0n1，对于 HDD/SSD 等 SCSI 设备是 /dev/sda。但是您不必记住它们。您可以使用以下语法轻松列出它们：
lsblk
# 仅列出 #
lsblk -l
# 使用 grep 命令过滤掉 loop devices #
lsblk -l | grep '^loop'

#linux  lstopo命令 - 显示硬件拓扑
#是否想查看 Linux 服务器或桌面版的拓扑？尝试：
jack@linux:$ lstopo
jack@linux:$ lstopo-no-graphics
您将看到有关以下信息：
NUMA 个内存节点
共享缓存
CPU 套件
处理器核心
处理器 “线程” 等

7. lshw查看所有硬件摘要信息
下面命令可以查看所有硬件摘要信息，并输出成一个html文件，把此html文件导出到电脑上，直接打开，可以清楚的看到硬件信息：

lshw -html > /hardware.html


EOF





查看主板型号：
dmidecode |grep -A16 "System Information$"




sudo dmidecode  -t baseboard






























