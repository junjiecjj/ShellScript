#! /usr/bin/env bash
#########################################################################
# File Name: Memory.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2022年01月04日 星期二 22时45分50秒

# 此程序的功能是：
#########################################################################



::<<EOF

# linux中  free - 获得空闲和已使用的内存
# 您的内存不足了吗？使用 free 命令显示 Linux 系统中可用和已用物理（RAM）以及交换内存的总量。它还显示内核使用的缓冲区和缓存：
jack@linux:$ free
# 以容易理解的格式输出
jack@linux:$ free -h
# 使用 cat 命令查找详细信息
jack@linux:$ cat /proc/meminfo

EOF

#4、获取内存信息
# 获取物理内存总量
mem_total=`free | grep Mem | awk '{print $2}'`
echo "物理内存总量："$mem_total

# 获取操作系统已使用内存总量
mem_sys_used=`free | grep Mem | awk '{print $3}'`
echo "已使用内存总量(操作系统)："$mem_sys_used

# 获取操作系统未使用内存总量
mem_sys_free=`free | grep Mem | awk '{print $4}'`
echo "剩余内存总量(操作系统)："$mem_sys_free

# 获取应用程序已使用的内存总量
mem_user_used=`free | sed -n 3p | awk '{print $3}'`
echo "已使用内存总量(应用程序)："$mem_user_used

# 获取应用程序未使用内存总量
mem_user_free=`free | sed -n 3p | awk '{print $4}'`
echo "剩余内存总量(应用程序)："$mem_user_free


# 获取交换分区总大小
mem_swap_total=`free | grep Swap | awk '{print $2}'`
echo "交换分区总大小："$mem_swap_total

# 获取已使用交换分区大小
mem_swap_used=`free | grep Swap | awk '{print $3}'`
echo "已使用交换分区大小："$mem_swap_used

# 获取剩余交换分区大小
mem_swap_free=`free | grep Swap | awk '{print $4}'`
echo "剩余交换分区大小："$mem_swap_free



#============================================================================
#   内存相关命令
# https://www.cnblogs.com/ggjucheng/archive/2013/01/14/2859613.html
#============================================================================

# 概要查看内存情况
free -mh


# 查看内存详细使用
cat /proc/meminfo

# 查看内存硬件信息,一共支持多大内存，几个内存插口，每个内存插口插的内存条的情况
dmidecode -t memory


# 查看内存总量
grep MemTotal /proc/meminfo


# 查看空闲内存总量
grep MemFree /proc/meminfo



内存槽及内存条：
dmidecode |grep -A16 "Memory Device$"






获取内存条类型
目前主流是DDR4，获取的命令如下：
dmidecode | grep -C 16 'Speed:'  | grep -A 16 "Memory Device" | grep 'Type:' | awk '{print $2}'




获取每根内存条的容量(单位：MB）
命令如下

dmidecode | grep -C 16 'Speed:'  | grep -A 16 "Memory Device" | grep 'Size:' | awk '{print $2}'




获取内存条制造商信息
命令如下：

dmidecode | grep -C 16 'Speed:'  | grep -A 16 "Memory Device" | grep 'Manufacturer:' | awk '{print $2}'



获取内存条频率
命令如下：

dmidecode | grep -C 16 'Speed:'  | grep -A 16 "Memory Device" | grep 'Speed:'





获取内存条数量
使用下面的命令获取内存条数量

dmidecode | grep -C 16 'Speed:'  | grep -A 16 "Memory Device" | grep 'Memory Device' | wc -l



（1）内存：条数、每条大小、内存是DDR4还是DDR3、内存频率是2666MT/S还是1600MT/s

条数： dmidecode|grep -A5 'Memory Device'|grep Size | grep -v Installed |wc -l

每条大小： dmidecode|grep -A5 'Memory Device'|grep Size | grep -v Installed |uniq

内存类型： dmidecode | grep -A16 "Memory Device" | grep 'Type:' |grep -v Unknown |uniq

内存频率： dmidecode | grep -A16 "Memory Device" | grep 'Speed' |grep -v Unknown |uniq


dmidecode

3.1、选项
可用选项列表

-d：(default:/dev/mem)从设备文件读取信息，输出内容与不加参数标准输出相同。
-h：显示帮助信息。
-s：只显示指定DMI字符串的信息。(string)
-t：只显示指定条目的信息。(type)
-u：显示未解码的原始条目内容。
--dump-bin file：将DMI数据转储到一个二进制文件中。
--from-dump FILE：从一个二进制文件读取DMI数据。
-V：显示版本信息。

3.2、-t详解
根据需求，目前只需要-t选项即可实现，所以下面对-t（type）进行详解
根据主要信息可以分为以下几个参数进行针对性的查询

bios/基本输入输出系统
system/系统
baseboard/主板
chassis/机箱风扇
processor/中央处理器,即CPU
memory/内存
Cache/缓存
connector/连接器
slot 

















##EOF
