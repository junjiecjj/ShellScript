#! /usr/bin/env bash
#########################################################################
# File Name: CPU.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2022年01月04日 星期二 22时43分30秒

# 此程序的功能是：
#########################################################################



# 获取cpu总核数
cpu_num=`grep -c "model name" /proc/cpuinfo`
echo "cpu总核数："$cpu_num

# 1、获取CPU利用率
################################################
#us 用户空间占用CPU百分比
#sy 内核空间占用CPU百分比
#ni 用户进程空间内改变过优先级的进程占用CPU百分比
#id 空闲CPU百分比
#wa 等待输入输出的CPU时间百分比
#hi 硬件中断
#si 软件中断
#################################################
# 获取用户空间占用CPU百分比
cpu_user=`top -b -n 1 | grep Cpu | awk '{print $2}' | cut -f 1 -d "%"`
echo "用户空间占用CPU百分比："$cpu_user

# 获取内核空间占用CPU百分比
cpu_system=`top -b -n 1 | grep Cpu | awk '{print $4}' | cut -f 1 -d "%"`
echo "内核空间占用CPU百分比："$cpu_system

# 获取空闲CPU百分比
cpu_idle=`top -b -n 1 | grep Cpu | awk '{print $8}' | cut -f 1 -d "%"`
echo "空闲CPU百分比："$cpu_idle

# 获取等待输入输出占CPU百分比
cpu_iowait=`top -b -n 1 | grep Cpu | awk '{print $10}' | cut -f 1 -d "%"`
echo "等待输入输出占CPU百分比："$cpu_iowait

#2、获取CPU上下文切换和中断次数
# 获取CPU中断次数
cpu_interrupt=`vmstat -n 1 1 | sed -n 3p | awk '{print $11}'`
echo "CPU中断次数："$cpu_interrupt

# 获取CPU上下文切换次数
cpu_context_switch=`vmstat -n 1 1 | sed -n 3p | awk '{print $12}'`
echo "CPU上下文切换次数："$cpu_context_switch

#3、获取CPU负载信息
# 获取CPU15分钟前到现在的负载平均值
cpu_load_15min=`uptime | awk '{print $11}' | cut -f 1 -d ','`
echo "CPU 15分钟前到现在的负载平均值："$cpu_load_15min

# 获取CPU5分钟前到现在的负载平均值
cpu_load_5min=`uptime | awk '{print $10}' | cut -f 1 -d ','`
echo "CPU 5分钟前到现在的负载平均值："$cpu_load_5min

# 获取CPU1分钟前到现在的负载平均值
cpu_load_1min=`uptime | awk '{print $9}' | cut -f 1 -d ','`
echo "CPU 1分钟前到现在的负载平均值："$cpu_load_1min

# 获取任务队列(就绪状态等待的进程数)
cpu_task_length=`vmstat -n 1 1 | sed -n 3p | awk '{print $1}'`
echo "CPU任务队列长度："$cpu_task_length


#===========================================================
#   CPU相关命令
# https://docsxyz.com/wiki/centos/commands-cpu-information
#============================================================

# 您可以通过cat命令查看 /proc/cpuinfo 文件获取CPU的信息，如下所示：
cat /proc/cpuinfo

# lscpu命令根据 sysfs 和 /proc/cpuinfo 中显示CPU架构信息，如下所示：
lscpu


# 查看cpu型号
cat /proc/cpuinfo |grep "model name" | uniq


#  dmidecode 命令是用于查看Linux系统硬件信息的工具，通过 --type 参数指定查看处理器相关信息，如下所示：
dmidecode -t  processor

# lshw工具用于显示硬件配置的详细信息。可以使用 -C 参数来选择硬件类别，显示 CPU 信息如下所示：
lshw -C CPU


#  nproc命令显示处理器数量
nproc

# https://lijian.ac.cn/posts/2018/09/linux-information/
# CPU型号
cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c

# 几颗核心
# cat /proc/cpuinfo | grep physical | uniq -c

# 查看CPU模式
getconf LONG_BIT

# 查看CPU运算flags
cat /proc/cpuinfo | grep flags | grep ' lm ' | wc -l

# 完整看cpu详细信息
dmidecode | grep 'Processor Information'

# 查看当前操作系统内核信息
uname -a

# 查看当前操作系统发行版信息
cat /etc/issue | grep Linux

# 查看机器型号
dmidecode | grep "Product Name"

# 总核数 = 物理CPU个数 X 每颗物理CPU的核数
# 总逻辑CPU数 = 物理CPU个数 X 每颗物理CPU的核数 X 超线程数

# 查看物理CPU个数
cat /proc/cpuinfo| grep "physical id"| sort| uniq| wc -l
#或
grep 'physical id' /proc/cpuinfo | sort -u | wc -l

# 查看每个物理CPU中core的个数(即核数)
cat /proc/cpuinfo| grep "cpu cores"| uniq
#或者
grep 'core id' /proc/cpuinfo | sort -u | wc -l

# 查看逻辑CPU的个数
cat /proc/cpuinfo| grep "processor"| wc -l
#或者
grep 'processor' /proc/cpuinfo | sort -u | wc -l

# 查看CPU信息（型号）
cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c
#或者
dmidecode -s processor-version



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

# 查看cuda版本
cat /usr/local/cuda/version.txt

# 查看cudnn版本
cat /usr/local/cuda/include/cudnn.h | grep CUDNN_MAJOR -A 2

# https://blog.csdn.net/xg123321123/article/details/78117702
# 查看物理CPU的个数
cat /proc/cpuinfo |grep "physical id"|sort |uniq|wc -l


# 查看逻辑CPU的个数
cat /proc/cpuinfo |grep "processor"|wc -l


# 查看每个CPU中core的个数(即核数)
cat /proc/cpuinfo |grep "cores"|uniq


# 查看CPU的主频
cat /proc/cpuinfo |grep MHz|uniq

#  查看CPU型号
cat /proc/cpuinfo | grep name | cut -f2 -d: | uniq -c

# 查看CPU运行在32bit还是64bit模式
getconf LONG_BIT


# 查看CPU是否支持64bit计算
cat /proc/cpuinfo | grep flags | grep ' lm ' | wc -l

# 查看机器型号
dmidecode | grep "Product Name"

# 查看系统运行时间、用户数、负载
uptime



# -C 参数用于获取有关 CPU 的详细信息。比如包括 CPU 缓存大小、频率（单位 MHz，如果有多核，会显示每个核心的频率）、核心数、CPU 型号以及 CPU 是 32 位还是 64 位。
inxi -C



# -G 参数可以获取和图形相关的信息。
# 它会显示所有的图形设备（GPU）、正在使用的 GPU 驱动（有助于检查是否使用 Nvidia 驱动还是 nouveau 驱动）、显示输出分辨率和驱动程序版本。
inxi -G







