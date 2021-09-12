#!/bin/bash

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

PASSWD="xxxxxx123"

echo -e "${GREEN_BLACK}************************* 1、系统更新 *************************${COLOR_RESET}\n"

echo ${PASSWD} | sudo -S apt update
echo ${PASSWD} | sudo -S apt upgrade -y

echo -e "${GREEN_BLACK}************************* 2、安装FVWM *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y fvwm

echo -e "${GREEN_BLACK}************************* 3、安装字体 文泉驿微米黑 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y fonts-wqy-microhei
echo ${PASSWD} | sudo -S apt install -y fonts-wqy-zenhei

echo -e "${GREEN_BLACK}************************* 4、安装字体 微软字体、宋体等 *************************${COLOR_RESET} \n"
echo ${PASSWD} | sudo -S apt install -y ttf-mscorefonts-installer
echo ${PASSWD} | sudo -S fc-cache -f -v

echo -e "${GREEN_BLACK}************************* 5、安装 7-zip解压缩  等 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y p7zip-full p7zip-rar

echo -e "${GREEN_BLACK}************************* 6、安装字体 FiraCode 等 *************************${COLOR_RESET} \n"

echo ${PASSWD} | sudo -S apt install -y fonts-firacode fonts-hack

installdir=/usr/share/fonts/truetype/firacodes
if [ ! -d "${installdir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${installdir}  ${COLOR_RESET}\n"
    echo ${PASSWD} | sudo -S mkdir -p "${installdir}"
else
    echo -e "目录已经存在 ${installdir} \n"
fi

for type in Bold Light Medium Regular Retina; do
    file_path="${installdir}/FiraCode-${type}.ttf"
    file_url="https://github.com/tonsky/FiraCode/blob/master/distr/ttf/FiraCode-${type}.ttf?raw=true"
    if [ ! -e "${file_path}" ]; then
        echo "wget -O $file_path $file_url"
        echo ${PASSWD} | sudo -S wget -c -O "${file_path}" "${file_url}"
    else
        echo -e "文件已经存在 ${file_path} \n"
    fi
done

echo -e "fc-cache -f \n"
cd ${installdir}
echo ${PASSWD} | sudo -S mkfontscale    # 生成核心字体信息
echo ${PASSWD} | sudo -S mkfontdir      # 生成字体文件夹
echo ${PASSWD} | sudo -S fc-cache -f -v # 刷新系统字体缓存

echo -e "${GREEN_BLACK}************************* 7、安装字体 Nerd Fonts  等 *************************${COLOR_RESET}\n"
echo -e "${PURPLE_BLACK}************************* 7.1、安装字体 FiraCode Nerd Fonts   等 *************************${COLOR_RESET}\n"
cd
echo -e "${WHITE_BLUE}去https://www.nerdfonts.com/font-downloads下载字体，存放在~/下载/nerdfonts/下 ${COLOR_RESET} \n"
URL=https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
downloaddir=~/tmp/FiracodeNerd.zip
wget -c -O ${downloaddir} ${URL}

installdir=/usr/share/fonts/truetype/nerdfonts
if [ ! -d "${installdir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${installdir}  ${COLOR_RESET}\n"
    echo ${PASSWD} | sudo -S mkdir -p ${installdir}
else
    echo -e "${WHITE_BLUE} 目录${installdir}已经存在  ${COLOR_RESET}\n"
fi

echo -e "${WHITE_BLUE}解压缩 ${downloaddir} 到 ${installdir} ${COLOR_RESET}"
#echo  ${PASSWD}  |  sudo -S 7z x ${downloaddir}  -r -o${install_dir}
echo ${PASSWD} | sudo -S unzip -d ${installdir} ${downloaddir}

echo -e "fc-cache -f \n"
cd ${installdir}
echo ${PASSWD} | sudo -S mkfontscale    # 生成核心字体信息
echo ${PASSWD} | sudo -S mkfontdir      # 生成字体文件夹
echo ${PASSWD} | sudo -S fc-cache -f -v # 刷新系统字体缓存

echo -e "${PURPLE_BLACK}************************* 7.2、安装字体 JetBrainsMono Nerd Fonts   等 *************************${COLOR_RESET}\n"

cd
URL=https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/JetBrainsMono.zip
downloaddir=~/tmp/JetBrainsMonoNerd.zip
echo -e "${WHITE_BLUE}去https://www.nerdfonts.com/font-downloads下载字体，存放在${downloaddir}下 ${COLOR_RESET} \n"
wget -c -O ${downloaddir} ${URL}

installdir=/usr/share/fonts/truetype/nerdfonts
if [ ! -d "${installdir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${installdir}  ${COLOR_RESET}\n"
    echo ${PASSWD} | sudo -S mkdir -p ${installdir}
else
    echo -e "${WHITE_BLUE} 目录${installdir}已经存在  ${COLOR_RESET}\n"
fi

# echo  ${PASSWD}  |  sudo -S unzip -d  ${install_dir}  ${downloaddir}
echo -e "${WHITE_BLUE}解压缩 ${downloaddir} 到 ${installdir} ${COLOR_RESET}"
#echo  ${PASSWD}  |  sudo -S 7z x ${downloaddir}  -r -o${installdir}
echo ${PASSWD} | sudo -S unzip -d ${installdir} ${downloaddir}

echo -e "fc-cache -f \n"
cd ${installdir}
echo ${PASSWD} | sudo -S mkfontscale    # 生成核心字体信息
echo ${PASSWD} | sudo -S mkfontdir      # 生成字体文件夹
echo ${PASSWD} | sudo -S fc-cache -f -v # 刷新系统字体缓存

echo -e "${PURPLE_BLACK}************************* 7.3、安装字体 Sauce Code Pro Nerd Font   等 *************************${COLOR_RESET}\n"

cd
URL=https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/SourceCodePro.zip
downloaddir=~/tmp/SauceCodeProNerd.zip
echo -e "${WHITE_BLUE}去https://www.nerdfonts.com/font-downloads下载字体，存放在${downloaddir}下 ${COLOR_RESET} \n"
wget -c -O ${downloaddir} ${URL}

installdir=/usr/share/fonts/truetype/nerdfonts
if [ ! -d "${installdir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${installdir}  ${COLOR_RESET}\n"
    echo ${PASSWD} | sudo -S mkdir -p ${installdir}
else
    echo -e "${WHITE_BLUE} 目录${installdir}已经存在  ${COLOR_RESET}\n"
fi

# echo  ${PASSWD}  |  sudo -S unzip -d  ${install_dir}  ${downloaddir}
echo -e "${WHITE_BLUE}解压缩 ${downloaddir} 到 ${installdir} ${COLOR_RESET}"
#echo  ${PASSWD}  |  sudo -S 7z x ${downloaddir}  -r -o${installdir}
echo ${PASSWD} | sudo -S unzip -d ${installdir} ${downloaddir}

echo -e "fc-cache -f \n"
cd ${installdir}
echo ${PASSWD} | sudo -S mkfontscale    # 生成核心字体信息
echo ${PASSWD} | sudo -S mkfontdir      # 生成字体文件夹
echo ${PASSWD} | sudo -S fc-cache -f -v # 刷新系统字体缓存

echo -e "${PURPLE_BLACK}************************* 7.4、安装字体 Hack Nerd Font   等 *************************${COLOR_RESET}\n"

cd
URL=https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Hack.zip
downloaddir=~/tmp/HackNerd.zip
echo -e "${WHITE_BLUE}去https://www.nerdfonts.com/font-downloads下载字体，存放在${downloaddir}下 ${COLOR_RESET} \n"
wget -c -O ${downloaddir} ${URL}

installdir=/usr/share/fonts/truetype/nerdfonts
if [ ! -d "${install_dir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${installdir}  ${COLOR_RESET}\n"
    echo ${PASSWD} | sudo -S mkdir -p ${installdir}
else
    echo -e "${WHITE_BLUE} 目录${installdir}已经存在  ${COLOR_RESET}\n"
fi

# echo  ${PASSWD}  |  sudo -S unzip -d  ${install_dir}  ${downloaddir}
echo -e "${WHITE_BLUE}解压缩 ${downloaddir} 到 ${installdir} ${COLOR_RESET}"
#echo  ${PASSWD}  |  sudo -S 7z x ${downloaddir}  -r -o${installdir}
echo ${PASSWD} | sudo -S unzip -d ${installdir} ${downloaddir}

echo -e "fc-cache -f \n"
cd ${installdir}
echo ${PASSWD} | sudo -S mkfontscale    # 生成核心字体信息
echo ${PASSWD} | sudo -S mkfontdir      # 生成字体文件夹
echo ${PASSWD} | sudo -S fc-cache -f -v # 刷新系统字体缓存

echo -e "${GREEN_BLACK}************************* 8、安装字体 JetBrains Fonts 等 *************************${COLOR_RESET}\n"

echo -e "${WHITE_BLUE}去网址：https://www.jetbrains.com/lp/mono/,下载字体，存放在~/下载/jetbrains/下  ${COLOR_RESET}\n"

cd
URL=https://download.jetbrains.com/fonts/JetBrainsMono-2.225.zip?_ga=2.157492538.1887783421.1625452183-1434134147.1617093312
downloaddir=~/tmp/JetBrains.zip
wget -c -O ${downloaddir} ${URL}

installdir=/usr/share/fonts/truetype/jetbrains
if [ ! -d "${installdir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${installdir}  ${COLOR_RESET}\n"
    echo ${PASSWD} | sudo -S mkdir -p ${installdir}
else
    echo -e "${WHITE_BLUE} 目录${installdir}已经存在  ${COLOR_RESET}\n"
fi

unzipdir=/home/jack/tmp/jetbrains
echo -e "${WHITE_BLUE}解压缩 ${downloaddir} 到 ${installdir} ${COLOR_RESET}"

#7z x ${downloaddir}  -r -o${unzipdir}
unzip -d ${unzipdir} ${downloaddir}

echo ${PASSWD} | sudo -S cp ~/tmp/jetbrains/fonts/ttf/* ${installdir}/
echo ${PASSWD} | sudo -S cp ~/tmp/jetbrains/fonts/variable/* ${installdir}/
echo ${PASSWD} | sudo -S cp ~/tmp/jetbrains/fonts/webfonts/* ${installdir}/

echo -e "fc-cache -f \n"
cd ${installdir}
echo -e $(pwd)
echo ${PASSWD} | sudo -S mkfontscale    # 生成核心字体信息
echo ${PASSWD} | sudo -S mkfontdir      # 生成字体文件夹
echo ${PASSWD} | sudo -S fc-cache -f -v # 刷新系统字体缓存

echo -e "${GREEN_BLACK}************************* 9、安装 powerline 字体 *************************${COLOR_RESET}\n"

cd
# 下载
git clone https://github.com/powerline/fonts.git

# 进入文件夹并安装
cd fonts
./install.sh

echo ${PASSWD} | sudo -S apt install fonts-powerline

echo -e "${GREEN_BLACK}************************* 10、安装 Awesome-Terminal Fonts 字体 *************************${COLOR_RESET}\n"

cd
git clone https://github.com/gabrielelana/awesome-terminal-fonts.git
cd awesome-terminal-fonts
./install.sh

echo -e "${GREEN_BLACK}************************* 11、安装 nerd-fonts 字体 *************************${COLOR_RESET}\n"
cd
#下载
git clone https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
#安装同上
./install.sh

echo -e "7${GREEN_BLACK}************************* 12、安装 screenkey *************************${COLOR_RESET} \n"

echo ${PASSWD} | sudo -S apt install -y screenkey

echo -e "${GREEN_BLACK}************************* 13、安装 okular *************************${COLOR_RESET} \n"

echo ${PASSWD} | sudo -S apt install -y okular

echo -e "${GREEN_BLACK}************************* 14、在 Ubuntu 20.04 上安装 Microsoft Edge 浏览器 *************************${COLOR_RESET} \n"

echo ${PASSWD} | sudo -S apt updade
echo ${PASSWD} | sudo -S apt upgrade
echo ${PASSWD} | sudo -S apt install -y software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
echo ${PASSWD} | sudo -S add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main"
echo ${PASSWD} | sudo -S install -y microsoft-edge-dev

echo -e "${GREEN_BLACK}************************* 15、安装终端浏览器  w3m  lynx  Link2 elinks *************************${COLOR_RESET}\n"

echo ${PASSWD} | sudo -S apt install -y w3m lynx links2 elinks

echo -e "${GREEN_BLACK}************************* 16、安装射手影音 *************************${COLOR_RESET}\n"

echo ${PASSWD} | sudo -S apt install -y smplayer vlc

echo -e "${GREEN_BLACK}************************* 17、安装深度截图、火焰截图 *************************${COLOR_RESET}\n"

echo ${PASSWD} | sudo -S apt install -y deepin-screenshot flameshot

echo -e "${GREEN_BLACK}************************* 18、安装Latex *************************${COLOR_RESET}\n"

echo ${PASSWD} | sudo -S apt install -y texlive-full texlive-xetex texlive-lang-chinese texstudio

echo -e "${GREEN_BLACK}************************* 19、安装exa *************************${COLOR_RESET} \n"
cd tmp
curl https://sh.rustup.rs -sSf | sh
wget -c https://github.com/ogham/exa/releases/download/v0.8.0/exa-linux-x86_64-0.8.0.zip
unzip exa-linux-x86_64-0.8.0.zip
echo ${PASSWD} | sudo -S mv exa-linux-x86_64 /usr/local/bin/exa
cd
echo -e "${GREEN_BLACK}************************* 20、安装ranger *************************${COLOR_RESET}\n"

echo ${PASSWD} | sudo -S apt install -y ranger caca-utils highlight atool w3m mediainfo catdoc docx2txt xlsx2csv

echo -e "${GREEN_BLACK}************************* 21、安装 Glances、sysstat、dstat、duf *************************${COLOR_RESET}\n"

# https://mp.weixin.qq.com/s/rVpq-al_LzkNx57fL05DKQ
# https://mp.weixin.qq.com/s/AQDfYqUy5UeljPDD3CHNsg
# https://mp.weixin.qq.com/s/C7qXS7gXH385n-yJjBxprQ
# https://mp.weixin.qq.com/s/JPTDGWDec-aFxCpbrE1JiA

echo ${PASSWD} | sudo -S apt-add-repository ppa:arnaud-hartmann/glances-stable
echo ${PASSWD} | sudo -S apt update -y
echo ${PASSWD} | sudo -S apt install -y glances

echo ${PASSWD} | sudo -S apt install -y sysstat dstat inix

cd ~/tmp
wget https://github.com/muesli/duf/releases/download/v0.5.0/checksums.txt
wget https://github.com/muesli/duf/releases/download/v0.5.0/duf_0.5.0_linux_amd64.deb
sha256sum --ignore-missing -c checksums.txt
echo ${PASSWD} | sudo -S dpkg -i duf_0.5.0_linux_amd64.deb
cd

echo -e "${GREEN_BLACK}************************* 22、安装 plots、*************************${COLOR_RESET} \n"

echo ${PASSWD} | sudo -S add-apt-repository ppa:apandada1/plots
echo ${PASSWD} | sudo -S apt update
echo ${PASSWD} | sudo -S apt install -y plots

echo -e "${GREEN_BLACK}************************* 23、安装 QQ、*************************${COLOR_RESET} \n"
cd ~/tmp
wget -c https://down.qq.com/qqweb/LinuxQQ/linuxqq_2.0.0-b2-1089_amd64.deb
echo ${PASSWD} | sudo -S dpkg -i linuxqq_2.0.0-b2-1089_amd64.deb
cd

echo -e "${GREEN_BLACK}************************* 24、安装 百度网盘、*************************${COLOR_RESET} \n"
cd ~/tmp
wget -c https://issuecdn.baidupcs.com/issue/netdisk/LinuxGuanjia/3.5.0/baidunetdisk_3.5.0_amd64.deb
echo ${PASSWD} | sudo -S dpkg -i baidunetdisk_3.5.0_amd64.deb
cd

echo -e "${GREEN_BLACK}************************* 25、安装 suckless套装*************************${COLOR_RESET}  \n"
echo ${PASSWD} | sudo -S apt install -y libx11-dev apt-file
echo ${PASSWD} | sudo -S apt-file update

echo ${PASSWD} | sudo -S apt install -y --force-yes x11-xserver-utils libxrandr-dev libimlib2-dev libharfbuzz-dev

echo -e "${PURPLE_BLACK}************************* 25.1 安装st *************************${COLOR_RESET}\n"

git clone https://github.com/junjiecjj/st-1.git
cd st-1
echo ${PASSWD} | sudo -S make clean install
cd

echo -e "${PURPLE_BLACK}************************* 25.2 安装slock *************************${COLOR_RESET}\n"
git clone https://github.com/junjiecjj/slock.git
cd slock
echo ${PASSWD} | sudo -S make clean install
cd

echo -e "${PURPLE_BLACK}************************* 25.3 安装dmenus *************************${COLOR_RESET}\n"
git clone https://github.com/junjiecjj/dmenu.git
cd dmenu
echo ${PASSWD} | sudo -S make clean install
cd

echo -e "${PURPLE_BLACK}************************* 25.4 安装picom *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y --force-yes libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libpcre3-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev

git clone https://github.com/jonaburg/picom
cd picom
git submodule update --init --recursive
meson --buildtype=release . build
LDFLAGS="-L/path/to/libraries" CPPFLAGS="-I/path/to/headers" meson --buildtype=release . build
ninja -C build
sudo ninja -C build install
cd

echo -e "${PURPLE_BLACK}************************* 25.5 安装polybar *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S echo "deb http://cz.archive.ubuntu.com/ubuntu groovy main universe" >>/etc/apt/sources.list
echo ${PASSWD} | sudo -S apt updade
echo ${PASSWD} | sudo -S apt install -y polybar

echo -e "${PURPLE_BLACK}************************* 25.6 安装 其他服务软件 *************************${COLOR_RESET}\n"

echo ${PASSWD} | sudo -S apt install -y suckless-tools libx11-dev libxft-dev libxinerama-dev gcc make

echo -e "${PURPLE_BLACK}************************* 25.7 背光灯调整工具 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y light

echo -e "${PURPLE_BLACK}************************* 25.8 安装数字键盘工具, 用于进入dwm桌面后自动开启数字键盘 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y numlockx

echo -e "${PURPLE_BLACK}************************* 25.9 virtualbox工具 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y virtualbox-guest-utils virtualbox-guest-X11

echo -e "${PURPLE_BLACK}*************************  25.10 电源监控工具 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y acpi acpitool

echo -e "${PURPLE_BLACK}************************* 25.11 透明配置支持 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y compton
echo ${PASSWD} | sudo -S apt install -y xcompmg

echo -e "${PURPLE_BLACK}************************* 25.12 背景图片设置工具 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y feh

echo -e "${PURPLE_BLACK}************************* 25.13 用于屏幕亮度的调节 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y xbacklight

echo -e "${PURPLE_BLACK}************************** 25.14 安装 nm-applet *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y network-manager-gnome

echo -e "${PURPLE_BLACK}************************** 25.15  锁屏 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install slimlock

echo -e "${PURPLE_BLACK}************************** 25.16 rofi 是一个快捷的程序启动器 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y rofi

echo -e "${PURPLE_BLACK}************************* 25.17 安装dwmstatus *************************${COLOR_RESET}\n"
git clone git://git.suckless.org/dwmstatus
cd dwmstatus
make
sudo ake PREFIX=/usr install
cd

echo -e "${PURPLE_BLACK}************************* 25.18 安装dwm *************************${COLOR_RESET}\n"
git clone https://github.com/junjiecjj/dwm.git
cd dmenu
echo ${PASSWD} | sudo -S make clean install
cd

echo -e "${GREEN_BLACK}************************* 26、在 Ubuntu 20.04 上安装 fish  *************************${COLOR_RESET} \n"

echo ${PASSWD} | sudo -S apt-add-repository ppa:fish-shell/release-3
echo ${PASSWD} | sudo -S apt update
echo ${PASSWD} | sudo -S -y apt install fish

echo -e "${GREEN_BLACK}************************* 26、在 Ubuntu 20.04 上安装 zsh  *************************${COLOR_RESET} \n"

echo ${PASSWD} | sudo -S apt install zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

echo -e "${GREEN_BLACK}************************* 26.1 安装 powerlevel9k  *************************${COLOR_RESET} \n"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "${WHITE_BLUE}************************* 26.2 安装incr *************************${COLOR_RESET}\n"
cd .oh-my-zsh/plugins/
mkdir incr
cd incr
wget http://mimosa-pudica.net/src/incr-0.2.zsh
cd

echo "${WHITE_BLUE}************************* 26.3 安装zsh-autosuggestions *************************${COLOR_RESET}"
git clone git://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

echo "${WHITE_BLUE}************************* 26.4 安装zsh-syntax-highlighting *************************${COLOR_RESET}"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

echo "${WHITE_BLUE}************************* 26.5 安装 autojump *************************${COLOR_RESET}"
git clone https://github.com/wting/autojump ~/.oh-my-zsh/plugins/autojump
cd ~/.oh-my-zsh/plugins/autojump
./install.py
cd

echo "${WHITE_BLUE}************************* 26.6 安装nvm *************************${COLOR_RESET}\n"
git clone https://github.com/lukechilds/zsh-nvm ~/.oh-my-zsh/plugins/zsh-nvm

echo "${WHITE_BLUE}************************* 26.7 安装pyenv *************************${COLOR_RESET}\n"
git clone https://github.com/davidparsson/zsh-pyenv-lazy.git ~/.oh-my-zsh/plugins/pyenv-lazy

echo "${WHITE_BLUE}************************* 26.8 用 Rust 编写的极简且快速的 Shell 提示符 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S snap install starship

echo ${PASSWD} | sudo -S apt install fonts-powerline
echo ${PASSWD} | sudo -S apt install fonts-firacode

echo '# eval "$(starship init bash)"' >>~/.bashrc

echo '# eval "$(starship init zsh)"' >>~/.zshrc

echo '# eval "$(starship init fish)"' >>~/.config/fish/config.fish

echo -e "您只需要在 .config 目录中创建一个配置文件（TOML 文件）。如果已经拥有一个，则只需导航到该目录并创建配置文件即可。\n

以下是您必须键入以创建目录和配置文件的内容："

mkdir -p ~/.config && touch ~/.config/starship.toml

echo -e "${GREEN_BLACK}************************* 27 安装vim使用的plugin插件 *************************${COLOR_RESET}\n"
cd
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo -e "${GREEN_BLACK}************************* 28 安装 neovim、vim-plug插件 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S add-apt-repository ppa:neovim-ppa/unstable
echo ${PASSWD} | sudo -S apt update
echo ${PASSWD} | sudo -S apt install -y neovim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "${GREEN_BLACK}************************* 28.0 安装nodejs *************************${COLOR_RESET}"

echo ${PASSWD} | sudo -S add-apt-repository ppa:chris-lea/node.js
echo ${PASSWD} | sudo -S apt update
echo ${PASSWD} | sudo -S apt install -y nodejs npm
# 安装instant-markdown-d
echo ${PASSWD} | sudo -S npm -g install instant-markdown-d

echo "${GREEN_BLACK}************************* 28.1 安装pynvim *************************${COLOR_RESET}"
pip3 install --user --upgrade pynvim

echo "${GREEN_BLACK}************************* 28.2 安装yarn *************************${COLOR_RESET}"
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
echo ${PASSWD} | sudo -S apt update
echo ${PASSWD} | sudo -S apt install -y yarn npm

echo "${GREEN_BLACK}************************* 28.3 安装ccls *************************${COLOR_RESET}"
echo ${PASSWD} | sudo -S apt install -y llvm clang
cd
git clone --depth=1 --recursive https://github.com/MaskRay/ccls
cd ccls
cmake -H. -BRelease -DCMAKE_BUILD_TYPE=Release -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_PREFIX_PATH=/path/to/clang+llvm
echo ${PASSWD} | sudo -S cmake --build Release --target install

echo -e "${GREEN_BLACK}************************* 27 下载github上的一些配置文件,并分发到各自的目录 *************************${COLOR_RESET}\n"

cd
URL=https://github.com/junjiecjj/configure_file.git
downloaddir=~/tmp/configure_file
git clone ${URL} ${downloaddir}

echo -e "${PURPLE_BLACK}************************* 27.1  复制.vimrc *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S cp ${downloaddir}/vimrc-file/vimrc_use ~/.vimrc

echo -e "${PURPLE_BLACK}************************* 27.2 复制.zshrc及ZSH的主题 *************************${COLOR_RESET}\n"
downloaddir=~/tmp/configure_file
echo ${PASSWD} | sudo -S cp ${downloaddir}/zsh/zshrc ~/.zshrc
echo ${PASSWD} | sudo -S cp -f ${downloaddir}/zsh/candy.zsh-theme ~/.oh-my-zsh/themes/
echo ${PASSWD} | sudo -S cp -f ${downloaddir}/zsh/myys.zsh-theme ~/.oh-my-zsh/themes/
echo ${PASSWD} | sudo -S cp -f ${downloaddir}/zsh/rkj-repos.zsh-theme ~/.oh-my-zsh/themes/
echo ${PASSWD} | sudo -S cp -f ${downloaddir}/zsh/xiong-chiamiov.zsh-theme ~/.oh-my-zsh/themes/

echo -e "${PURPLE_BLACK}************************* 27.3  复制.Xdefault *************************${COLOR_RESET}\n"
downloaddir=~/tmp/configure_file
echo ${PASSWD} | sudo -S cp ${downloaddir}/xterm/seabird_xterm ~/.Xdefault
echo ${PASSWD} | sudo -S cp ${downloaddir}/xterm/molokai_xterm ~/.Xdefault_molokai
echo ${PASSWD} | sudo -S cp ${downloaddir}/xterm/seabird_xterm ~/.Xdefault_seabird
echo ${PASSWD} | sudo -S cp ${downloaddir}/xterm/seoul256_xterm ~/.Xdefault_seoul256
echo ${PASSWD} | sudo -S cp ${downloaddir}/xterm/solarized_light_xterm ~/.Xdefault_solarized_light
echo ${PASSWD} | sudo -S cp ${downloaddir}/xterm/solarized_dark_xterm ~/.Xdefault_solarized_dark

echo -e "${PURPLE_BLACK}************************* 27.4  复制vim颜色配置文件 *************************${COLOR_RESET}\n"
downloaddir=~/tmp/configure_file
echo ${PASSWD} | sudo -S cp -f ${downloaddir}/vim/* /usr/share/vim/vim82/colors/
echo ${PASSWD} | sudo -S cp -f ${downloaddir}/vim/* /usr/share/vim/vim81/colors/

echo -e "${PURPLE_BLACK}************************* 27.5 安装kitty并复制kitty配置文件 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install -y kitty

downloaddir=~/tmp/configure_file
kitty_dir=~/.config/kitty

if [ ! -d "${kitty_dir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${kitty_dir}  ${COLOR_RESET}\n"
    mkdir -p ${kitty_dir}
else
    echo -e "${WHITE_BLUE} 目录${kitty_dir}已经存在  ${COLOR_RESET}\n"
fi

cp ${downloaddir}/kitty/* ${kitty_dir}

echo -e "${PURPLE_BLACK}************************* 27.6  安装alacritty并复制alacritty配置文件 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S add-apt-repository ppa:aslatter/ppa
echo ${PASSWD} | sudo -S add-apt-repository ppa:mmstick76/alacritty
echo ${PASSWD} | sudo -S apt install -y alacritty

downloaddir=~/tmp/configure_file
alacritty_dir=~/.config/alacritty
if [ ! -d "${alacritty_dir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${alacritty_dir}  ${COLOR_RESET}\n"
    echo ${PASSWD} | sudo -S mkdir -p "${alacritty_dir}"
else
    echo -e "${WHITE_BLUE} 目录${alacritty_dir}已经存在  ${COLOR_RESET}\n"
fi

echo ${PASSWD} | sudo -S cp ${downloaddir}/alacritty/* ${alacritty_dir}

echo -e "${PURPLE_BLACK}************************* 27.7 复制polybar配置文件 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S chmod 777 /etc/apt/sources.list
echo "deb http://cz.archive.ubuntu.com/ubuntu groovy main universe" >>/etc/apt/sources.list
echo ${PASSWD} | sudo -S chmod 644 /etc/apt/sources.list

echo ${PASSWD} | sudo -S apt update
echo ${PASSWD} | sudo -S apt install polybar

downloaddir=~/tmp/configure_file
polybar_dir=~/.config/polybar

if [ ! -d "${polybar_dir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${polybar_dir}  ${COLOR_RESET}\n"
    mkdir -p ${polybar_dir}
else
    echo -e "${WHITE_BLUE} 目录${polybar_dir}已经存在  ${COLOR_RESET}\n"
fi

cp ${downloaddir}/polybar/* ${polybar_dir}

echo -e "${PURPLE_BLACK}************************* 27.8 复制FVWM配置文件 *************************${COLOR_RESET}\n"

downloaddir=~/tmp/configure_file
fvwm_dir=~/.fvwm

if [ ! -d "${fvwm_dir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${fvwm_dir}  ${COLOR_RESET}\n"
    mkdir -p ${fvwm_dir}
else
    echo -e "${WHITE_BLUE} 目录${fvwm_dir}已经存在  ${COLOR_RESET}\n"
fi

cp -r -f ${downloaddir}/fvwm/* ${fvwm_dir}

echo -e "${PURPLE_BLACK}************************* 27.9 复制conky配置文件 *************************${COLOR_RESET}\n"

downloaddir=~/tmp/configure_file
conky_dir=~/.config/autostart

if [ ! -d "${conky_dir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${conky_dir}  ${COLOR_RESET}\n"
    mkdir -p ${conky_dir}
else
    echo -e "${WHITE_BLUE} 目录${conky_dir}已经存在  ${COLOR_RESET}\n"
fi

cp -f ${downloaddir}/conky/conky.desktop ${conky_dir}

echo -e "${PURPLE_BLACK}************************* 28 复制i3wm配置文件 *************************${COLOR_RESET}\n"

cd
URL=https://github.com/junjiecjj/i3wm.git
i3_dir=~/.config/i3

if [ ! -d "${i3_dir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${i3_dir}  ${COLOR_RESET}\n"
    echo ${PASSWD} | sudo -S mkdir -p "${i3_dir}"
else
    echo -e "${WHITE_BLUE} 目录${i3_dir}已经存在  ${COLOR_RESET}\n"
fi
echo ${PASSWD} | sudo -S git clone ${URL} ${i3_dir}

echo -e "${PURPLE_BLACK}************************* 29  复制neovim配置文件 *************************${COLOR_RESET}\n"

cd
URL=https://github.com/junjiecjj/nvim.git
nvim_downloaddir=~/tmp/nvim
git clone ${URL} ${nvim_downloaddir}

nvim_dir=~/.config/nvim
if [ ! -d "${nvim_dir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${nvim_dir}  ${COLOR_RESET}\n"
    echo ${PASSWD} | sudo -S mkdir -p "${nvim_dir}"
else
    echo -e "${WHITE_BLUE} 目录${nvim_dir}已经存在  ${COLOR_RESET}\n"
fi

nvimColor_dir=~/.config/nvim1/colors
if [ ! -d "${nvimColor_dir}" ]; then
    echo -e "${WHITE_BLUE} 创建目录${nvimColor_dir}  ${COLOR_RESET}\n"
    echo ${PASSWD} | sudo -S mkdir -p "${nvimColor_dir}"
else
    echo -e "${WHITE_BLUE} 目录${nvimColor_dir}已经存在  ${COLOR_RESET}\n"
fi

echo ${PASSWD} | sudo -S cp ${nvim_downloaddir}/init.vim ${nvim_dir}
echo ${PASSWD} | sudo -S cp ${nvim_downloaddir}/coc-setting.json ${nvim_dir}
echo ${PASSWD} | sudo -S cp -f ${downloaddir}/vim/* ${nvimColor_dir}

echo -e "${PURPLE_BLACK}************************* 29 安装taglist   *************************${COLOR_RESET}\n"

echo ${PASSWD} | sudo -S apt install -y universal-ctags exuberant-ctags ctags

taglist_downloaddir=~/tmp/taglist_45
cd ~/tmp
wget -O taglist_45.zip https://sourceforge.net/projects/vim-taglist/files/vim-taglist/4.5/taglist_45.zip/download
unzip -d ${taglist_downloaddir} taglist_45.zip
echo ${PASSWD} | sudo -S cp -f ${taglist_downloaddir}/doc/taglist.txt /usr/share/vim/vim82/doc/
echo ${PASSWD} | sudo -S cp -f ${taglist_downloaddir}/plugin/taglist.vim /usr/share/vim/vim82/plugin/
echo ${PASSWD} | sudo -S cp -f ${taglist_downloaddir}/doc/taglist.txt /usr/share/vim/vim81/doc/
echo ${PASSWD} | sudo -S cp -f ${taglist_downloaddir}/plugin/taglist.vim /usr/share/vim/vim81/plugin/



echo -e "${PURPLE_BLACK}************************* 30 安装游戏   *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S  add-apt-repository ppa:stk/dev
echo ${PASSWD} | sudo -S  apt-get update
echo ${PASSWD} | sudo -S  apt-get install supertuxkart
echo ${PASSWD} | sudo -S  apt-get install simutrans-pak64

echo -e "${PURPLE_BLACK}************************* 31 安装Clapper：一款外观时尚的 Linux 视频播放器，极简主义者适用   *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S apt install flatpak
echo ${PASSWD} | sudo -S apt install gnome-software-plugin-flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install flathub com.github.rafostar.Clapper

echo -e "安装后，只需在应用菜单中搜索它，或右击视频文件，选择用 Clapper 打开它。"


echo -e "${PURPLE_BLACK}**************************** 31  安装游戏   *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S  add-apt-repository ppa:stk/dev
echo ${PASSWD} | sudo -S  apt-get update
echo ${PASSWD} | sudo -S  apt-get install supertuxkart
echo ${PASSWD} | sudo -S  apt-get install simutrans-pak64

echo -e "${PURPLE_BLACK}************************* 32 万能的音视频转换器Mysqit ************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S  sh -c "echo 'deb https://download.opensuse.org/repositories/home:/llamaret/xUbuntu_20.04/ /' > /etc/apt/sources.list.d/home:llamaret.list"

wget -nv https://download.opensuse.org/repositories/home:/llamaret/xUbuntu_20.04/Release.key -O Release.key

echo ${PASSWD} | sudo -S  apt-key add - < Release.key

echo ${PASSWD} | sudo -S  apt-get update

echo ${PASSWD} | sudo -S  apt-get install mystiq


echo -e "${PURPLE_BLACK}**************************** 33、   18 个工具分析 Linux 系统占用网络带宽大的程序    *************************${COLOR_RESET}\n"
# https://mp.weixin.qq.com/s?__biz=MzAxODI5ODMwOA==&mid=2666556780&idx=2&sn=d84342f8cc985a0bf32d0d4314b657fd&chksm=80dca9c7b7ab20d1fc52c0cc1331d6b3752fc2c286e2a0a26a8971338f1f9bcb44a84e81ed54&mpshare=1&scene=24&srcid=0818ndyVaH1bLQzrSVEPZ4CD&sharer_sharetime=1629258706784&sharer_shareid=0d5c82ce3c8b7c8f30cc9a686416d4a8&exportkey=AfYNRIyCn4HFOZjG9fcRU3Q%3D&pass_ticket=6Y1lZaR%2BVJtIAbqgKMobMHXtcI9zT%2Bcf9lgsTpu9GP7GDvBu7lqICGXHhXfqMBIf&wx_header=0#rd
# https://zhuanlan.zhihu.com/p/269978796

echo ${PASSWD} | sudo -S  apt  install nload bmon slurm bwm-ng cbm speedometer vnstat ifstat dstat collectl iftop iptraf tcptrack pktstat nethogs netdiag



echo -e "${PURPLE_BLACK}**************************** 34、 Linux 这些工具堪称神器！你用过哪个？    * ************************${COLOR_RESET}\n"

# https://mp.weixin.qq.com/s?__biz=MzA4NzQzMzU4Mg==&mid=2652963742&idx=2&sn=49aaed20580d016a6717b5a563251141&chksm=8bec2b9fbc9ba28971e76d65cc2b9ec8d96945b835724406fea1f4350d82de62024e4f436e96&mpshare=1&scene=1&srcid=0818mUw0Om4QejtYPb5s5SQl&sharer_sharetime=1630326325504&sharer_shareid=0d5c82ce3c8b7c8f30cc9a686416d4a8&exportkey=ARcv4LPCYrn9Z5VGYT2qhYw%3D&pass_ticket=4N8gJ8MNmQqrBBQn56hXhf26wo%2BXDS3rryu8YvGMG6mAjFOupc6ePoYMO59hs15d&wx_header=0#rd
echo ${PASSWD} | sudo -S  apt-get install tig mycli jq axel  cloc multitail shellcheck



echo -e "${PURPLE_BLACK}**************************** 35、  终端文件管理器nnn  ***********************${COLOR_RESET}\n"
cd ~/tmp
git clone --depth 1 https://github.com/jarun/nnn
cd nnn && make
echo ${PASSWD} | sudo -S  make install


echo -e "${PURPLE_BLACK}**************************** 35、用于替换 find 的搜索工具fd  ***********************${COLOR_RESET}\n"
cd ~/tmp

wget https://github.com/sharkdp/fd/releases/download/v7.1.0/fd_7.1.0_amd64.deb

echo ${PASSWD} | sudo -S  dpkg -i fd_7.1.0_amd64.deb



echo -e "${PURPLE_BLACK}**************************** 35、cat 的替代品，是猛男就用 bat **********************${COLOR_RESET}\n"

wget https://github.com/sharkdp/bat/releases/download/v0.10.0/bat_0.10.0_amd64.deb

echo ${PASSWD} | sudo -S  dpkg -i bat_0.10.0_amd64.deb

echo ${PASSWD} | sudo -S apt install bat





echo -e "${PURPLE_BLACK}**************************** 35、9 个常用 Linux 应用程序的轻量级替代方案*********************${COLOR_RESET}\n"


#  Midori： Web 浏览器
echo ${PASSWD} | sudo -S apt install midori


#  在基于 Ubuntu 的发行版上安装 Trojita
echo ${PASSWD} | sudo -S sh -c "echo 'deb http://download.opensuse.org/repositories/home:/jkt-gentoo:/trojita/xUbuntu_16.04/ /' > /etc/apt/sources.list.d/trojita.list"

wget http://download.opensuse.org/repositories/home:jkt-gentoo:trojita/xUbuntu_16.04/Release.key

echo ${PASSWD} | sudo -S apt-key add - < Release.key

echo ${PASSWD} | sudo -S apt update

echo ${PASSWD} | sudo -S apt install trojita


# 在基于 Ubuntu 的发行版上安装 Yarock
echo ${PASSWD} | sudo -S add-apt-repository ppa:nilarimogard/webupd8

echo ${PASSWD} | sudo -S apt update

echo ${PASSWD} | sudo -S apt install yarock

# Mousepad：文本编辑器
echo ${PASSWD} | sudo -S apt install mousepad

# lnav 是一个很好的工具，你可以用它来通过彩色编码的信息以更有条理的方式监控日志文件。在 Linux 系统中，它不是默认安装的。你可以用下面的命令来安装它：
echo ${PASSWD} | sudo -S  apt install lnav


echo -e "${PURPLE_BLACK}**************************** 安装Lazygit  *********************${COLOR_RESET}\n"

echo ${PASSWD} | sudo -S add-apt-repository ppa:lazygit-team/release
echo ${PASSWD} | sudo -S apt-get update
echo ${PASSWD} | sudo -S apt-get install lazygit
