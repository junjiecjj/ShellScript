#!/bin/bash
#########################################################################
# File Name: test.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年06月26日 星期六 09时40分26秒

# 此程序的功能是：
#########################################################################


BLACK_BLACK='\e[40;30;1m'
BLACK_RED='\e[40;31;1m'
BLACK_GREEN='\e[40;32;1m'
BLACK_YELLOW='\e[40;33;1m'
BLACK_BLUE='\e[40;34;1m'
BLACK_PURTPLE='\e[40;35;1m'
BLACK_DEEPGREEN='\e[40;36;1m'
BLACK_WHITE='\e[40;37;1m'



RED_BLACK='\e[41;30;1m'
RED_RED='\e[41;31;1m'
RED_GREEN='\e[41;32;1m'
RED_YELLOW='\e[41;33;1m'
RED_BLUE='\e[41;34;1m'
RED_PURTPLE='\e[41;35;1m'
RED_DEEPGREEN='\e[41;36;1m'
RED_WHITE='\e[41;37;1m'

GREEN_BLACK='\e[42;30;1m'
GREEN_RED='\e[42;31;1m'
GREEN_GREEN='\e[42;32;1m'
GREEN_YELLOW='\e[42;33;1m'
GREEN_BLUE='\e[42;34;1m'
GREEN_PURTPLE='\e[42;35;1m'
GREEN_DEEPGREEN='\e[42;36;1m'
GREEN_WHITE='\e[42;37;1m'


YELLOW_BLACK='\e[43;30;1m'
YELLOW_RED='\e[43;31;1m'
YELLOW_GREEN='\e[43;32;1m'
YELLOW_YELLOW='\e[43;33;1m'
YELLOW_BLUE='\e[43;34;1m'
YELLOW_PURTPLE='\e[43;35;1m'
YELLOW_DEEPGREEN='\e[43;36;1m'
YELLOW_WHITE='\e[43;37;1m'

BLUE_BLACK='\e[44;30;1m'
BLUE_RED='\e[44;31;1m'
BLUE_GREEN='\e[44;32;1m'
BLUE_YELLOW='\e[44;33;1m'
BLUE_BLUE='\e[44;34;1m'
BLUE_PURTPLE='\e[44;35;1m'
BLUE_DEEPGREEN='\e[44;36;1m'
BLUE_WHITE='\e[44;37;1m'

PURPLE_BLACK='\e[45;30;1m'
PURPLE_RED='\e[45;31;1m'
PURPLE_GREEN='\e[45;32;1m'
EPURPL_YELLOW='\e[45;33;1m'
PURPLE_BLUE='\e[45;34;1m'
PURPLE_PURTPLE='\e[45;35;1m'
PURPLE_DEEPGREEN='\e[45;36;1m'
PURPLE_WHITE='\e[45;37;1m'

DEEPGREEN_BLACK='\e[46;30;1m'
DEEPGREEN_RED='\e[46;31;1m'
DEEPGREEN_GREEN='\e[46;32;1m'
DEEPGREEN_YELLOW='\e[46;33;1m'
DEEPGREEN_BLUE='\e[46;34;1m'
DEEPGREEN_PURTPLE='\e[46;35;1m'
DEEPGREEN_DEEPGREEN='\e[46;36;1m'
DEEPGREEN_WHITE='\e[46;37;1m'


WHITE_BLACK='\e[47;30;1m'
WHITE_RED='\e[47;31;1m'
WHITE_GREEN='\e[47;32;1m'
WHITE_YELLOW='\e[47;33;1m'
WHITE_BLUE='\e[47;34;1m'
WHITE_PURTPLE='\e[47;35;1m'
WHITE_DEEPGREEN='\e[47;36;1m'
WHITE_WHITE='\e[47;37;1m'


COLOR_RESET='\e[0m'

PASSWD=chen
echo -e "${GREEN_BLACK}************************* 下载github上的一些配置文件,并分发到各自的目录 *************************${COLOR_RESET}\n"
cd

URL=https://github.com/junjiecjj/configure_file.git
downloaddir=~/tmp/confile-file
git clone    ${URL}  ${downloaddir}


echo -e "${PURPLE_BLACK}************************* 复制.vimrc *************************${COLOR_RESET}\n"
echo ${PASSWD}  |  sudo -S   cp  ${downloaddir}/vimrc-file/vimrc_use  ~/.vimrc

echo -e "${PURPLE_BLACK}************************* 复制.zshrc *************************${COLOR_RESET}\n"
echo ${PASSWD}  |  sudo -S   cp ${downloaddir}/zsh/zshrc  ~/.zshrc

echo -e "${PURPLE_BLACK}************************* 复制.Xdefault *************************${COLOR_RESET}\n"
echo ${PASSWD}  |  sudo -S   cp ${downloaddir}/xterm/seabird_xterm  			~/.Xdefault
echo ${PASSWD}  |  sudo -S   cp ${downloaddir}/xterm/molokai_xterm           ~/.Xdefault_molokai
echo ${PASSWD}  |  sudo -S   cp ${downloaddir}/xterm/seabird_xterm  			~/.Xdefault_seabird
echo ${PASSWD}  |  sudo -S   cp ${downloaddir}/xterm/seoul256_xterm  		~/.Xdefault_seoul256
echo ${PASSWD}  |  sudo -S   cp ${downloaddir}/xterm/solarized_light_xterm  	~/.Xdefault_solarized_light
echo ${PASSWD}  |  sudo -S   cp ${downloaddir}/xterm/solarized_dark_xterm  	~/.Xdefault_solarized_dark


echo -e "${PURPLE_BLACK}************************* 复制vim颜色配置文件 *************************${COLOR_RESET}\n"
echo ${PASSWD}  |  sudo -S   cp ${downloaddir}/vim/*   	/usr/share/vim/vim82/colors/
echo ${PASSWD}  |  sudo -S   cp ${downloaddir}/vim/*   	/usr/share/vim/vim81/colors/


echo -e "${PURPLE_BLACK}************************* 复制kitty配置文件 *************************${COLOR_RESET}\n"
downloaddir=~/tmp/confile-file
kitty_dir=~/.config/kitty1
echo -e ${downloaddir}
echo -e  ${kitty_dir}
if [ ! -d "${kitty_dir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${kitty_dir}  ${COLOR_RESET}\n"
    mkdir -p ${kitty_dir}
else
    echo -e  "${WHITE_BLUE} 目录${kitty_dir}已经存在  ${COLOR_RESET}\n"
fi

cp ${downloaddir}/kitty/*   	${kitty_dir}

