#!/bin/bash
#########################################################################
# File Name: killall.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 21时45分32秒

# 此程序的功能是：
#########################################################################

################################################################
#有一些脚本加入到了cron之中，存在脚本尚未运行完毕又有新任务需要执行的情况，
#导致系统负载升高，因此可通过编写脚本，筛选出影响负载的进程一次性全部杀死。
################################################################
ps aux | grep 指定进程名 | grep -v grep | awk '{print $2}' | xargs kill -9



# grep -v grep 是指过滤掉grep字段
xargs kill -9 指把前面的输出结果作为kill -9命令的参数，并执行该命令，kill -9 会强行杀掉指定进程.
