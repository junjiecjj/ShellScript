#!/bin/bash
#########################################################################
# File Name: delet5char.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年07月18日 星期日 21时45分21秒

# 此程序的功能是：
#########################################################################

##############################################################
#把一个文档前五行中包含字母的行删掉，同时删除6到10行包含的所有字母
##############################################################
sed -n '1,5'p 2.txt | sed '/[a-zA-Z]/'d
sed -n '6,10'p 2.txt | sed s'/[a-zA-Z]//'g
sed -n '11,$'p 2.txt
#最终结果只是在屏幕上打印结果，如果想直接更改文件，可将输出结果写入临时文件中，再替换2.txt或者使用-i选项
