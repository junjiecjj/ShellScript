#! /usr/bin/env bash
#########################################################################
# File Name: USB.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2022年01月04日 星期二 22时48分09秒

# 此程序的功能是：
#########################################################################



linux  lsusb命令 - 列出 USB 设备
#我们都使用 USB 设备，例如外部硬盘驱动器和键盘。运行 NA 命令以显示有关 Linux 系统中 USB 总线及其连接的设备的信息。
lsusb
#检测连接到系统的 USB 设备的 PID 和 VID 信息#
sudo usbview
#usbview 提供了连接到系统的 USB 设备的图形摘要。通过在树形显示中选择单个设备可以显示详细信息#