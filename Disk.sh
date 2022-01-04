:<<EOF#! /usr/bin/env bash
#########################################################################
# File Name: Disk.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2022年01月04日 星期二 22时45分51秒

# 此程序的功能是：
#########################################################################


:<<EOF


Linux df 命令用于显示目前在 Linux 系统上的文件系统的磁盘使用情况统计。
语法
 df [选项]... [FILE]...
 文件 - a, --all 包含所有的具有 0 Blocks 的文件系统
 文件 --block-size={SIZE} 使用 {SIZE} 大小的 Blocks
 文件 - h, --human-readable 使用人类可读的格式 (预设值是不加这个选项的...)
 文件 - H, --si 很像 -h, 但是用 1000 为单位而不是用 1024
 文件 - i, --inodes 列出 inode 资讯，不列出已使用 block
 文件 - k, --kilobytes 就像是 --block-size=1024
 文件 - l, --local 限制列出的文件结构
 文件 - m, --megabytes 就像 --block-size=1048576
 文件 --no-sync 取得资讯前不 sync (预设值)
 文件 - P, --portability 使用 POSIX 输出格式
 文件 --sync 在取得资讯前 sync
 文件 - t, --type=TYPE 限制列出文件系统的 TYPE
 文件 - T, --print-type 显示文件系统的形式
 文件 - x, --exclude-type=TYPE 限制列出文件系统不要显示 TYPE
 文件 - v (忽略)
 文件 --help 显示这个帮手并且离开
 文件 --version 输出版本资讯并且离开


Linux du 命令用于显示目录或文件的大小。
du 会显示指定的目录或文件所占用的磁盘空间。
语法
 du [-abcDhHklmsSx][-L < 符号连接 >][-X
<文件>][--block-size][--exclude=< 目录或文件 >][--max-depth=< 目录层数 >][--help][--version][目录或文件]
 参数说明：
-a 或 - all 显示目录中个别文件的大小。
-b 或 - bytes 显示目录或文件大小时，以 byte 为单位。
-c 或 --total 除了显示个别目录或文件的大小外，同时也显示所有目录或文件的总和。
-D 或 --dereference-args 显示指定符号连接的源文件大小。
-h 或 --human-readable 以 K，M，G 为单位，提高信息的可读性。
-H 或 --si 与 - h 参数相同，但是 K，M，G 是以 1000 为换算单位。
-k 或 --kilobytes 以 1024 bytes 为单位。
-l 或 --count-links 重复计算硬件连接的文件。
-L <符号连接> 或 --dereference < 符号连接 > 显示选项中所指定符号连接的源文件大小。
-m 或 --megabytes 以 1MB 为单位。
-s 或 --summarize 仅显示总计。
-S 或 --separate-dirs 显示个别目录的大小时，并不含其子目录的大小。
-x 或 --one-file-xystem 以一开始处理时的文件系统为准，若遇上其它不同的文件系统目录则略过。
-X <文件> 或 --exclude-from=< 文件 > 在 < 文件 > 指定目录或文件。
--exclude=<目录或文件> 略过指定的目录或文件。
--max-depth=<目录层数> 超过指定层数的目录后，予以忽略。
--help 显示帮助。
--version 显示版本信息。


stat 命令后面可以直接跟上文件或目录，用于显示文件/目录或文件系统的大小和其他统计信息。



fdisk -l 可以显示磁盘大小以及磁盘分区信息。

https://mp.weixin.qq.com/s?__biz=MjM5NDEwNzc0MQ==&mid=2650947733&idx=4&sn=1a1eec23831a41b85b43f08f64062949&chksm=bd7a38a78a0db1b17673d0c7394a0b4aa9dcc9e02de19f59a06e5cb734d79413c4888b490969&mpshare=1&scene=24&srcid=0330R3CdoTYY9TLmrbC0wODr&sharer_sharetime=1617066235588&sharer_shareid=0d5c82ce3c8b7c8f30cc9a686416d4a8&exportkey=AS4ctT1Y3IXi0lPQK9rcCu4%3D&pass_ticket=sC3CHeyQYGeccRKcEFZTc5QFPLkATfa%2FDaZUd3NqKSoJnLZycjrxRYed7dyRyTYS&wx_header=0#rd
6款有用的监视Linux磁盘IO性能的命令

介绍6款有用的监视Linux磁盘IO性能的命令（工具），它们分别是iotop、iostat、vmstat、atop、dstat、ioping，以下将附上简单的使用方法。

前言
磁盘IO问题（input/output）是造成Linux系统性能不佳的最常见原因之一。当应用程序试图在存储设备（例如硬盘驱动器、SAN和NAS）上快速读取或写入过多数据时，就会发生这种情况，这迫使应用程序和用户等待。
top命令可用于查看CPU是否正在等待磁盘操作完成。“wa”度量标准显示IO等待，CPU等待IO完成所花费的时间（以百分比表示）。参考在Linux系统中使用top命令和ps命令查找高CPU消耗进程。
在本文中，我们将说明如何使用各种Linux命令来确定磁盘IO性能问题。
在对Linux上的实时磁盘活动进行故障排除或监视时，六个命令最有用，它们分别是：iotop、iostat、vmstat、atop、dstat、ioping。这些都是常用于实时测量磁盘I/O性能的命令，也较为容易掌握。
1、iotop
iotop是用于显示实时磁盘I/O性能的，类似于top的实用程序，它实际上显示执行I/O的进程的列表。运行带有'--only或-o'选项的iotop命令以查看磁盘I/O活动。
linuxmi@linuxmi:~/www.linuxmi.com$ iotop --only

注：
o：仅显示实际正在执行I/O的进程或线程。
2、iostat
iostat命令用于监视设备和分区的系统输入/输出统计信息。它通过观察设备处于活动状态的时间（相对于其平均传输速率）来监视系统I/O。
它带有与磁盘I/O相关的各种信息，可以通过运行以下命令来查看：
linuxmi@linuxmi:~/www.linuxmi.com$ sudo iostat -dxm

注：
x：显示更多详细信息统计信息。
d：仅显示设备报告。
m：显示统计信息（以MB为单位）。
3、vmstat
vmstat命令代表虚拟内存统计信息。这是一个性能监视命令，除了提供内存外，它还提供有关块IO和CPU活动的信息。
报告的第一行将包含自上次重新引导以来的平均I/O值，随后的行将显示实时统计信息：
linuxmi@linuxmi:~/www.linuxmi.com$ vmstat -d 1 5

注：
d：仅显示磁盘统计信息。
时间间隔（1）：每秒将重新测量统计信息并报告一次。
计数值（5）：统计信息将在退出前报告五次。
4、atop
atop命令是另一个性能监视工具，它能够报告Linux系统上所有进程的活动（即使进程在该时间间隔内已完成）。
它每10秒报告一次每个进程的统计信息，从而迅速掌握系统中发生的变化：
linuxmi@linuxmi:~/www.linuxmi.com$ atop | grep DSK

5、dstat
dstat命令是另一个方便的工具，用于在性能调整测试、基准测试或故障排除期间监视系统。它克服了其他一些工具的局限性，并增加了一些额外的功能，更多的计数器和灵活性。
默认情况下，它显示报告间隔为1秒：
linuxmi@linuxmi:~/www.linuxmi.com$ dstat --disk --io

对于特定的磁盘，运行：
linuxmi@linuxmi:~/www.linuxmi.com$ dstat --disk --io -D sda
6、ioping
ioping用于实时监视I/O速度和延迟，而ping命令显示网络延迟。这个简单的实用程序使您能够了解磁盘响应请求需要多长时间：
linuxmi@linuxmi:~/www.linuxmi.com$ sudo ioping /dev/sda5 -c4



EOF

df -ha

df -hT

du -hs

stat test.txt

# 查看硬盘和分区分布
lsblk

# 如果要看硬盘和分区的详细信息
fdisk -l


#5、获取磁盘I/O统计信息
echo "指定设备(/dev/sda)的统计信息"
# 每秒向设备发起的读请求次数
disk_sda_rs=`iostat -kx | grep sda| awk '{print $4}'`
echo "每秒向设备发起的读请求次数："$disk_sda_rs

# 每秒向设备发起的写请求次数
disk_sda_ws=`iostat -kx | grep sda| awk '{print $5}'`
echo "每秒向设备发起的写请求次数："$disk_sda_ws

# 向设备发起的I/O请求队列长度平均值
disk_sda_avgqu_sz=`iostat -kx | grep sda| awk '{print $9}'`
echo "向设备发起的I/O请求队列长度平均值"$disk_sda_avgqu_sz

# 每次向设备发起的I/O请求平均时间
disk_sda_await=`iostat -kx | grep sda| awk '{print $10}'`
echo "每次向设备发起的I/O请求平均时间："$disk_sda_await

# 向设备发起的I/O服务时间均值
disk_sda_svctm=`iostat -kx | grep sda| awk '{print $11}'`
echo "向设备发起的I/O服务时间均值："$disk_sda_svctm

# 向设备发起I/O请求的CPU时间百分占比
disk_sda_util=`iostat -kx | grep sda| awk '{print $12}'`
echo "向设备发起I/O请求的CPU时间百分占比："$disk_sda_util


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

#linux lsblk中 - 列表块存储设备
#所有 Linux 块设备均提供对硬件设备的缓冲访问，并允许根据配置读取和写入块。Linux 块设备具有名称。例如，对于 NVMe 是 /dev/nvme0n1，对于 HDD/SSD 等 SCSI 设备是 /dev/sda。但是您不必记住它们。您可以使用以下语法轻松列出它们：
lsblk
# 仅列出 #
lsblk -l
# 使用 grep 命令过滤掉 loop devices #
lsblk -l | grep '^loop'


#===========================================================
#   磁盘、网卡相关命令a
# https://www.cnblogs.com/ggjucheng/archive/2013/01/14/2859613.html
#============================================================
# 查看硬盘和分区分布
lsblk

# 如果要看硬盘和分区的详细信息
fdisk -l

