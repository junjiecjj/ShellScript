#! /usr/bin/env bash
#########################################################################
# File Name: colorprint.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2022年03月25日 星期五 13时58分33秒

# 此程序的功能是：

:<<EOF
字背景颜色范围:40–47
40:黑
41:红
42:绿
43:黄色
44:蓝色
45:紫色
46:天蓝
47:白色


字颜色:30–37
30:黑
31:红
32:绿
33:黄
34:蓝色
35:紫色
36:天蓝
37:白色


ANSI控制码的说明：
\33[0m 关闭所有属性
\33[1m 设置高亮度
\33[4m 下划线
\33[5m 闪烁
\33[7m 反显


如果你用的是BSHELL或者BASH，有很简单的方法，就象ls程序那样：

printf "\033[01;40;32mHELLO\033[0m"

能显示绿色的HELLO字样。
这里

\033[是转义子列，表示后面接的是颜色代码。

01是高亮度，不写是低亮度。

40是背景色，40：黑，41：红：42：绿，43：黄，44：青，45：蓝，47：白。

32是前景色：30：黑，31：红，32：绿，33：黄，34：蓝，35：紫，36：青，37：白。

\033[0m系统缺省色

EOF
#########################################################################


bg_black="\033[40m"
bg_red="\033[41m"
bg_green="\033[42m"
bg_yellow="\033[43m"
bg_blue="\033[44m"
bg_purple="\033[45m"
bg_cyan="\033[46m"
bg_white="\033[47m"

fg_black="\033[30m"
fg_red="\033[31m"
fg_green="\033[32m"
fg_yellow="\033[33m"
fg_blue="\033[34m"
fg_purple="\033[35m"
fg_cyan="\033[36m"
fg_white="\033[37m"

set_clear="\033[0m"
set_bold="\033[1m"
set_underline="\033[4m"
set_flash="\033[5m"

NORMAL=$(tput sgr0)
GREEN=$(tput setaf 2; tput bold)
YELLOW=$(tput setaf 3)
RED=$(tput setaf 1)

function red() {
    echo -e "$RED$*$NORMAL"
}

function green() {
    echo -e "$GREEN$*$NORMAL"
}

function yellow() {
    echo -e "$YELLOW$*$NORMAL"
}

# To print success
green "Task has been completed"

# To print error
red "The configuration file does not exist"

# To print warning
yellow "You have to use higher version."


echo -e "${bg_red}${fg_green}${set_bold}红色背景粗体的绿色字${set_clear}"

echo -e "${bg_red}${fg_green}红色背景的绿色字${set_clear}"

echo -e "${bg_red}${fg_green}${set_bold}红色背景粗体的绿色字${set_clear}"




















