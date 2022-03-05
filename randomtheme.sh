#!/bin/bash
#########################################################################
# File Name: test.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年06月26日 星期六 09时40分26秒

# 此程序的功能是：
#########################################################################


light_theme=(gruvbox-mix-light-medium belafonte-day edge-light synth-midnight-light solarized-light windows-95-light  man-pag  papercolor-light gruvbox-light-soft  novel  )
L1=${#light_theme[*]}
# echo -e "L1 = ${L1}\n"
index1=$(((${RANDOM} % ${L1})))
# echo -e "index1 = ${index1}\n"

dark_theme=(desert-night tango mellow-purple freya mathias goa-base vs-code-dark-plus  molokai yachiyo solarized-darcula mono-amber elic  desert  apathy  darcula urple warm-neon unikitty-dark elementary  solarized-dark-higher-contrast pico)
L2=${#dark_theme[*]}
# echo -e "L2 = ${L2}\n"
index2=$(((${RANDOM} % ${L2})))
# echo -e "index2 = ${index2}\n"



hour=`date +%H`
# hour=date | awk '{print $5}' | awk -F: '{print $1}'


# echo   "hour = ${hour}"
# echo  ${light_theme[1]}

if (( ${hour}>=7 && ${hour} <= 17 ))
then
    echo -e "现在是白天\n"
    theme.sh ${light_theme[index1]}
else
    echo -e "现在是晚上\n"
    theme.sh ${dark_theme[index2]}
fi


echo -e "yes.............\n"
# theme.sh  "tango"
echo -e "no.............\n"


my_array=(Asasa Bdsd "Cdsd" Dfdf)

echo "第一个元素为: ${my_array[0]}"
echo "第二个元素为: ${my_array[1]}"
echo "第三个元素为: ${my_array[2]}"
echo "第四个元素为: ${my_array[3]}"
echo "第四个元素为: ${my_array[4]}"
