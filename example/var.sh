#!/bin/bash
#########################################################################
# File Name: var.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 21时45分24秒

# 此程序的功能是：
#########################################################################

应用场景：希望将执行结果或者位置参数赋值给变量，以便后续使用。

方法1：

for i in $(echo "4 5 6"); do
    eval a$i=$i
done
echo $a4 $a5 $a6
方法2：将位置参数192.168.1.1{1,2}拆分为到每个变量

num=0
for i in $(#eval将{1,2}分解为1 2
    eval echo $*
); do
    let num+=1
    eval node${num}="$i"
done
echo $node1 $node2 $node3
# bash a.sh 192.168.1.1{1,2}
192.168.1.11 192.168.1.12
方法3：

arr=(4 5 6)
INDEX1=$(echo ${arr[0]})
INDEX2=$(echo ${arr[1]})
INDEX3=$(echo ${arr[2]})
