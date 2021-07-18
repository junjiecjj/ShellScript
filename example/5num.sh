#!/bin/bash
#########################################################################
# File Name: 5num.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 21时45分29秒

# 此程序的功能是：
#########################################################################

COUNT=1
SUM=0
MIN=0
MAX=100
while [ $COUNT -le 5 ]; do
    read -p "请输入1-10个整数：" INT
    if [[ ! $INT =~ ^[0-9]+$ ]]; then
        echo "输入必须是整数！"
        exit 1
    elif [[ $INT -gt 100 ]]; then
        echo "输入必须是100以内！"
        exit 1
    fi
    SUM=$(($SUM + $INT))
    [ $MIN -lt $INT ] && MIN=$INT
    [ $MAX -gt $INT ] && MAX=$INT
    let COUNT++
done
echo "SUM: $SUM"
echo "MIN: $MIN"
echo "MAX: $MAX"