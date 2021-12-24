#! /usr/bin/env bash
#########################################################################
# File Name: Chrismas.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年12月24日 星期五 12时20分58秒

# 此程序的功能是：

https://mp.weixin.qq.com/s?__biz=MzUxMjEyNDgyNw==&mid=2247500999&idx=1&sn=e8f57615bce93cca49f397b86b803daf&chksm=f96bb633ce1c3f25f19c9132b2d619f0d0ba94db9469b282e85e86687d2b1eafc738684f18d7&mpshare=1&scene=24&srcid=12247nXM9r82u7NBmSjA9Ocv&sharer_sharetime=1640319510148&sharer_shareid=0d5c82ce3c8b7c8f30cc9a686416d4a8&exportkey=AYp%2BVAkT5i2dYembcH%2Fc%2FHI%3D&pass_ticket=3XqpYcDR7H%2F%2B%2BJoo9z%2BwQ7U%2B%2FUe5t1hZe0ZdFjzH86zrr6l%2BhbwpDkbuENidlhfy&wx_header=0#rd
#########################################################################


#用shell编写一个圣诞树
#创建时间2021-12-23
trap "tput reset; tput cnorm; exit" 2
clear
tput civis
lin=2
col=$(($(tput cols) / 2))
c=$((col-1))
est=$((c-2))
color=0
tput setaf 2; tput bold

# 打印树叶
for ((i=1; i<20; i+=2))
{
    tput cup $lin $col
    for ((j=1; j<=i; j++))
    {
        echo -n \*
    }
    let lin++
    let col--
}

tput sgr0; tput setaf 3

# 打印树干
for ((i=1; i<=2; i++))
{
    tput cup $((lin++)) $c
    echo '||'
}
new_year=$(date +'%Y')
let new_year++
tput setaf 222; tput bold
tput cup $lin $((c - 10));  echo $new_year  圣 诞 节 快 乐！！！
color=122
tput setaf $color; tput bold
tput cup $((lin + 1)) $((c - 10)); echo 祝大家新年快乐 ！！!
let c++
k=1

#装饰一下
while true; do
    for ((i=1; i<=35; i++)) {
        # Turn off the lights
        [ $k -gt 1 ] && {
            tput setaf 2; tput bold
            tput cup ${line[$[k-1]$i]} ${column[$[k-1]$i]}; echo \*
            unset line[$[k-1]$i]; unset column[$[k-1]$i]
        }

        li=$((RANDOM % 9 + 3))
        start=$((c-li+2))
        co=$((RANDOM % (li-2) * 2 + 1 + start))
        tput setaf $color; tput bold
        tput cup $li $co
        echo o
        line[$k$i]=$li
        column[$k$i]=$co
        color=$(((color+1)%8))

        sh=1
  #for l in M O N E Y
  for l in  哈哈哈哈!
        do
            tput cup $((lin+1)) $((c+sh))
            echo $l
            let sh++
            let sh++
            sleep 0.02
        done
    }
    k=$((k % 2 + 1))
done
