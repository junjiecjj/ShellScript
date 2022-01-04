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


#  查看bios信息
dmidecode -t bios

#dmidecode以一种可读的方式dump出机器的DMI(Desktop Management Interface)信息。这些信息包括了硬件以及BIOS，既可以得到当前的配置，也可以得到系统支持的最大配置，比如说支持的最大内存数等。

#如果要查看所有有用信息
dmidecode -q
#里面包含了很多硬件信息。

#8. lsscsi查看SCSI控制器设备的信息
#可以看到SCSI信息和所有虚拟磁盘以及光驱的信息，如果没有硬件SCSI控制器，那就不会返回信息：

root@ubuntu:/home/peng# lsscsi
#[2:0:0:0]    disk    VMware,  VMware Virtual S 1.0   /dev/sda 
#[4:0:0:0]    cd/dvd  NECVMWar VMware SATA CD01 1.00  /dev/sr0 
#插入一个U盘后再查看：

root@ubuntu:/home/peng# lsscsi
#[2:0:0:0]    disk    VMware,  VMware Virtual S 1.0   /dev/sda 
#[4:0:0:0]    cd/dvd  NECVMWar VMware SATA CD01 1.00  /dev/sr0 
#[33:0:0:0]   disk    Kingston DataTraveler G2  1.00  /dev/sdb 
#可以看到U盘为Kingston。