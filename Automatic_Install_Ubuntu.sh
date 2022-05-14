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


echo -e "${GREEN_BLACK}************************* 6、安装字体 inconsolata 等 *************************${COLOR_RESET} \n"

echo ${PASSWD} | sudo -S apt install -y fonts-inconsolata

echo -e "${GREEN_BLACK}************************* 6、安装字体 Proggy 等 *************************${COLOR_RESET} \n"

echo ${PASSWD} | sudo -S apt install -y  fonts-proggy

echo -e "${GREEN_BLACK}************************* 6、安装字体 YaHei Consolas Hybrid等 *************************${COLOR_RESET} \n"

cd ~/tmp

git clone https://github.com/yakumioto/YaHei-Consolas-Hybrid-1.12

echo ${PASSWD} | sudo -S  mkdir -p /usr/share/fonts/truetype/YaHei\ Consolas\ Hybrid

echo ${PASSWD} | sudo -S  cp YaHei\ Consolas\ Hybrid\ 1.12.ttf /usr/share/fonts/truetype/YaHei\ Consolas\ Hybrid

cd /usr/share/fonts/truetype/YaHei\ Consolas\ Hybrid
echo ${PASSWD} | sudo -S  chmod 644 YaHei\ Consolas\ Hybrid\ 1.12.ttf

echo ${PASSWD} | sudo -S   mkfontscale  #生成核心字体信息
echo ${PASSWD} | sudo -S  mkfontdir
echo ${PASSWD} | sudo -S  fc-cache -fv
cd
# 或者

cd ~/tmp
wget -O /tmp/YaHei.Consolas.1.12.zip https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/uigroupcode/YaHei.Consolas.1.12.zip
unzip ~/tmp/YaHei.Consolas.1.12.zip
echo ${PASSWD} | sudo -S mkdir -p /usr/share/fonts/truetype/consolas
echo ${PASSWD} | sudo -S mv YaHei.Consolas.1.12.ttf /usr/share/fonts/truetype/consolas/
echo ${PASSWD} | sudo -S chmod 644 /usr/share/fonts/truetype/consolas/YaHei.Consolas.1.12.ttf
cd /usr/share/fonts/truetype/consolas
echo ${PASSWD} | sudo -S   mkfontscale  #生成核心字体信息
echo ${PASSWD} | sudo -S  mkfontdir
echo ${PASSWD} | sudo -S  fc-cache -fv
cd

echo -e "${GREEN_BLACK}************************* 6、安装字体 cascadia *************************${COLOR_RESET} \n"

cd ~/tmp
wget https://github.com/microsoft/cascadia-code/releases/download/v1909.16/Cascadia.ttf
echo ${PASSWD} | sudo -S mkdir -p /usr/share/fonts/truetype/cascadia
echo ${PASSWD} | sudo -S mv Cascadia.ttf /usr/share/fonts/truetype/cascadia/
echo ${PASSWD} | sudo -S chmod 644 /usr/share/fonts/truetype/cascadia/Cascadia.ttf

echo ${PASSWD} | sudo -S   mkfontscale  #生成核心字体信息
echo ${PASSWD} | sudo -S  mkfontdir
echo ${PASSWD} | sudo -S  fc-cache -fv
cd


echo -e "${GREEN_BLACK}************************* 6、安装字体 Consolas 等 *************************${COLOR_RESET} \n"
#解压压缩包
tar -zxvf YaHeiConsolas.tar.gz

#在系统目录下创建自定义字体目录
echo ${PASSWD} | sudo -S mkdir -p /usr/share/fonts/truetype/YaHeiConsolas

#复制解压出来的字体到刚才创建的目录
echo ${PASSWD} | sudo -S cp YaHeiConsolas.ttf /usr/share/fonts/truetype/YaHeiConsolas

#修改字体权限
echo ${PASSWD} | sudo -S chmod 644 /usr/share/fonts/truetype/YaHeiConsolas/*.ttf
#进入字体目录
cd /usr/share/fonts/truetype/YaHeiConsolas
#刷新并安装字体
echo ${PASSWD} | sudo -S   mkfontscale  #生成核心字体信息
echo ${PASSWD} | sudo -S  mkfontdir
echo ${PASSWD} | sudo -S  fc-cache -fv
cd

echo -e "${GREEN_BLACK}************************* 6、安装Monaco字体 *************************${COLOR_RESET} \n"

wget https://github.com/fangwentong/dotfiles/raw/master/ubuntu-gui/fonts/Monaco.ttf
echo ${PASSWD} | sudo -S  mkdir -p /usr/share/fonts/truetype/monaco
echo ${PASSWD} | sudo -S  mv Monaco.ttf /usr/share/fonts/truetype/monaco
echo ${PASSWD} | sudo -S  chmod 744 /usr/share/fonts/truetype/monaco/Monaco.ttf
cd /usr/share/fonts/truetype/monaco/
echo ${PASSWD} | sudo -S   mkfontscale  #生成核心字体信息
echo ${PASSWD} | sudo -S  mkfontdir
echo ${PASSWD} | sudo -S  fc-cache -fv
cd


echo -e "${GREEN_BLACK}************************* 6、ubuntu安装Windows字体 *************************${COLOR_RESET} \n"

echo ${PASSWD} | sudo -S apt-get install ttf-mscorefonts-installer
echo ${PASSWD} | sudo -S apt-get --reinstall install ttf-mscorefonts-installer
echo ${PASSWD} | sudo -S fc-cache -f -v


echo -e "${GREEN_BLACK}************************* 6、ubuntu安装苹果字体 *************************${COLOR_RESET} \n"

wget http://drive.noobslab.com/data/Mac/macfonts.zip -O mac-fonts.zip
echo ${PASSWD} | sudo -S unzip mac-fonts.zip -d /usr/share/fonts/truetype/macfonts
rm mac-fonts.zip
echo ${PASSWD} | sudo -S fc-cache -f -v

cd /usr/share/fonts/truetype/mac-fonts
echo ${PASSWD} | sudo -S   mkfontscale  #生成核心字体信息
echo ${PASSWD} | sudo -S  mkfontdir
echo ${PASSWD} | sudo -S  fc-cache -fv
cd


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

sudo apt install python3-pip

pip3 install  ueberzug

sudo  apt install -y ranger caca-utils highlight atool w3m mediainfo catdoc docx2txt xlsx2csv

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

# 配置文件
cd ~ && curl -L https://raw.githubusercontent.com/junjiecjj/configure_file/master/zsh/zshrc_xiong-chiamiov-plus -o .zshrc  &&  source ~/.zshrc
cd ~ && curl -L  https://raw.githubusercontent.com/junjiecjj/configure_file/master/zsh/.p10k.zsh  > .p10k.zsh


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


echo "${WHITE_BLUE}************************* 26.7 安装powerlevel10k *************************${COLOR_RESET}\n"
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# Set ZSH_THEME="powerlevel10k/powerlevel10k" in ~/.zshrc.

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

echo -e "${GREEN_BLACK}************************* 安装lua  *************************${COLOR_RESET}\n"
cd ~/tmp
curl -R -O http://www.lua.org/ftp/lua-5.4.4.tar.gz
tar zxf lua-5.4.4.tar.gz
cd lua-5.4.4
sudo make all test
sudo make install

sudo apt-get install libreadline-dev




echo -e "${GREEN_BLACK}************************* 27 安装vim使用的plugin插件 *************************${COLOR_RESET}\n"
cd
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo -e "${GREEN_BLACK}************************* 28 安装 neovim、vim-plug插件 *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S add-apt-repository ppa:neovim-ppa/unstable
echo ${PASSWD} | sudo -S apt update
echo ${PASSWD} | sudo -S apt install -y neovim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "${GREEN_BLACK}************************* 28.0 安装nodejs *************************${COLOR_RESET}"

# curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
curl -sL https://deb.nodesource.com/setup_14.x | echo ${PASSWD} | sudo -S -E bash -

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


echo -e "${PURPLE_BLACK}**************************** Ubuntu用户都应该安装的4个Linux应用  *********************${COLOR_RESET}\n"

# https://mp.weixin.qq.com/s?__biz=MjM5NDEwNzc0MQ==&mid=2650952515&idx=1&sn=e1b9d3b637dc5a23166c01b333680068&chksm=bd7a2b718a0da267af7462d589b7b0da18fb1ca15b670588d7a1d1994ccf69e0e3472c2fa86d&mpshare=1&scene=1&srcid=09208O4HfLikT31Ey2UnfVSy&sharer_sharetime=1632105692461&sharer_shareid=0d5c82ce3c8b7c8f30cc9a686416d4a8&exportkey=Afcg4YC23weZE8pBEX8IGck%3D&pass_ticket=mQR43SKvzRE4kfQG6Mp%2FdLXXQ15e4NJqTV%2B8tZHLPo7PNS5CG89pBQU7l4abxsFG&wx_header=0#rd

echo ${PASSWD} | sudo -S  synaptic  kodi  bleachbit
echo ${PASSWD} | sudo -S  add-apt-repository ppa:cappelikan/ppa
echo ${PASSWD} | sudo -S apt update
echo ${PASSWD} | sudo -S apt install mainline


echo -e "${PURPLE_BLACK}**************************** Markdown编辑器Notable  *********************${COLOR_RESET}\n"
cd
wget -qO - https://typora.io/linux/public-key.asc | sudo apt-key add -
# add Typora's repository
echo ${PASSWD} | sudo -S add-apt-repository 'deb https://typora.io/linux ./'
echo ${PASSWD} | sudo -S apt-get update
# install typora
echo ${PASSWD} | sudo -S apt-get install typora

echo -e "${PURPLE_BLACK}**************************** Markdown编辑器Notable  *********************${COLOR_RESET}\n"
# bashtop
echo ${PASSWD} | sudo -S add-apt-repository ppa:bashtop-monitor/bashtop
echo ${PASSWD} | sudo -S apt update
echo ${PASSWD} | sudo -S apt install bashtop


#bpytop 的安装
echo ${PASSWD} | sudo -S apt install bpytop

#btop 的安装
echo ${PASSWD} | sudo -S snap install btop

#bottom 的安装
cd ~/tmp
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.6.6/bottom_0.6.6_amd64.deb
echo ${PASSWD} | sudo -S dpkg -i bottom_0.6.6_amd64.deb



echo -e "${PURPLE_BLACK}**************************** 如何清晰美观的展现 Linux 文件系统  *********************${COLOR_RESET}\n"

cd ~/tmp

wget https://github.com/Canop/lfs/releases/download/v2.0.1/lfs_2.0.1.zip

unzip lfs_2.0.1.zip

sudo mv build/x86_64-linux/lfs /usr/local/bin/

sudo chmod +x /usr/local/bin/lfs
echo -e "${PURPLE_BLACK}**************************** axel 是命令行多线程下载工具，下载文件时可以替代 curl、wget。  *********************${COLOR_RESET}\n"


sudo apt-get install axel


axel 参数选项
-n：指定线程数

-o：指定另存为目录

-s：指定每秒的最大比特数

-q：静默模式

案例
# axel -n 10 -o /tmp/ http://mirrors.163.com/ubuntu/ls-lR.gz

echo -e "${PURPLE_BLACK}****************************ack和ag是两个文本搜索工具，比自带的grep要好用得多。  *********************${COLOR_RESET}\n"


sudo apt-get install silversearcher-ag
sudo apt install ack

ag 命令常用参数
ag -g （文件名）：类似于 find . -name （文件名）

ag -i sed：忽略大小写搜索含 sed 文本

ag -A sed：搜索含 sed 文本，并显示匹配内容之后的 n 行文本

ag -B sed：搜索含 sed 文本，并显示匹配内容之前的 n 行文本

ag -C sed：搜索含 sed 文本，并同时显示匹配内容以及它前后各 n 行文本的内容

ag -w sed：全匹配搜索，只搜索与所搜内容完全匹配的文本

ag --java sed：在 java 文件中搜索含 sed 的文本

ag --xml sed：在 XML 文件中搜索含 sed 的文本



echo -e "${PURPLE_BLACK}**************************** fd  *********************${COLOR_RESET}\n"

sudo apt install fd-find

alias fd=fdfind

在当前目录中搜索所有的 markdown 文件（.md 或.MD ），find 命令如下：

find . -iname "*.md"


简单搜索
fd pace


按指定类型进行搜索
默认情况下，fd 会搜索所有符合条件的结果。如果你想指定搜索的类型可以使用 -t 参数，fd 目前支持四种类型：f、d、l、x，分别表示：文件、目录、符号链接、可执行文件。下面我们来看几个实际的例子：

只搜索包含 pace 关键字的文件：
fd -tf pace


只搜索包含 pace 关键字的目录：
fd -td pace

搜索指定目录
fd 默认会在当前目录和其下所有子目录中搜索，如果你想搜索指定的目录就需要在第二个参数中指定。例如：要在指定的 /etc 目录中搜索包含 passwd 关键字的文件或目录。
fd passwd /etc


fd 支持隐藏文件搜索，如果你需要搜索隐藏文件可以加上 -H 参数。例如：在当前目录下搜索关键字为 zshrc 的隐藏文件。：
fd -H zshrc

在当前目录下搜索文件扩展名为 md 的文件。
fd -e md

在当前目录下搜索文件名包含 reademe 且扩展名为 md 的文件。
fd -e md readme


搜索当前目录下除 lib 目录外的所有包含关键字 readme 的文件或目录。
fd -E lib readme


搜索指定目录下除文件名后缀为 js 的所有文件。
fd  -E '*.js' -tf  . source/lib/fastclick


echo -e "${GREEN_BLACK}************************* 19、安装logo-ls *************************${COLOR_RESET} \n"
cd ~/tmp

wget -q https://github.com/Yash-Handa/logo-ls/releases/download/v1.3.7/logo-ls_Linux_x86_64.tar.gz

tar zxvf logo-ls_Linux_x86_64.tar.gz

cd logo-ls_Linux_x86_64/

sudo install -v logo-ls /usr/local/bin/

sudo cp logo-ls.1.gz /usr/share/man/man1/

echo -e "${PURPLE_BLACK}**************************** exa *********************${COLOR_RESET}\n"

sudo apt install exa

wget -c https://github.com/ogham/exa/releases/download/v0.9.0/exa-linux-x86_64-0.9.0.zip
unzip exa-linux-x86_64-0.9.0.zip
mv exa-linux-x86_64 /usr/local/bin/exa


或

[root@localhost ~]# curl https://sh.rustup.rs -sSf | sh
[root@localhost ~]# git clone https://github.com/ogham/exa/archive/v0.9.0.tar.gz
[root@localhost ~]# cd exa
[root@localhost exa-0.9.0]# make install


显示选项
-1，--oneline：每行显示一个条目

-G，--grid：将条目显示为网格（默认）

-l，--long：显示扩展细节和属性

-R，--recurse：递归到目录

-T，--tree：作为树递归到目录中

-x，--across：对网格进行排序，而不是向下排序

-F，--classify：按文件名显示类型指示器

--colo[u]r：何时使用终端颜色

--colo[u]r-scale : 清楚地突出显示文件大小的级别

--icons : 显示图标

--no-icons : 不显示图标（总是覆盖 --icons）

过滤选项
-a，--all：显示隐藏和“点”文件

-d，--list-dirs：像普通文件一样列出目录

-L，--level=(depth)：限制递归深度

-r，--reverse：反转排序顺序

-s，--sort=(field)：按哪个字段排序

--group-directories-first：在其他文件之前列出目录

-D，--only-dirs：只列出目录

--git-ignore：忽略中提到的文件.gitignore

-I，--ignore-glob=(globs)：要忽略的文件的全局模式（管道分隔）

传递该--all选项两次以同时显示.和..目录。


echo -e "${PURPLE_BLACK}**************************** glances  *********************${COLOR_RESET}\n"




sudo apt install glances



echo -e "${PURPLE_BLACK}**************************** tldr  *********************${COLOR_RESET}\n"

sudo apt-get install nodejs

sudo apt-get install npm

sudo npm install -g tldr




执行完上述三条命令后，还需要再执行tldr --update，更新tldr至最新的状态，然后就可以直接使用了；

tldr --update
tldr 的使用：

tldr 命令的使用也非常简单，只需 tldr + 你所要查询的命令即可；





echo -e "${PURPLE_BLACK}**************************** duf  *********************${COLOR_RESET}\n"


$ sudo apt install gdebi
#如果报错，Failed to fetch http://security.ubuntu.com......
# sudo apt-get update

$ sudo gdebi duf_0.5.0_linux_amd64.deb
#要先在下载duf_0.5.0_linux_amd64.deb，下载地址为:https://github.com/muesli/duf/releases/download/v0.5.0/duf_0.5.0_linux_amd64.deb







echo -e "${PURPLE_BLACK}**************************** bat  *********************${COLOR_RESET}\n"


我是通过 Ubuntu 环境下安装的 bat，从 bat 的发布页面下载.deb文件，可执行如下命令进行下载和安装。

sudo apt-get install wget
wget https://github.com/sharkdp/bat/releases/tag/v0.18.3/bat_0.18.3_amd64.deb
sudo dpkg -i bat_0.18.3_amd64.deb

如果你不喜欢默认主题，也是可以根据自己的风格进行修改，只需执行：bat --list-themes命令，即可显示可用的主题。

例如你要选择Dracula主题，可直接执行：bat --theme=Dracula 文件名
使用新主题
首先创建一个新的语法高亮主题的文件夹

mkdir -p "$(bat --config-dir)/themes"
cd "$(bat --config-dir)/themes"

# Download a theme in '.tmTheme' format, for example:
git clone https://github.com/greggb/sublime-snazzy

# Update the binary cache
bat cache --build
最后使用 bat --list-themes 来检查新主题是否可用。


使用教程
查看一个文本：bat README.md
查看多个文本：bat *.sh
从标准输入中读入，自动语法高亮：curl -s https://sh.rustup.rs | bat
显示不可打印的字符：bat -A /etc/hosts
与其它工具集成：find README.md -exec bat {} +


echo -e "${PURPLE_BLACK}**************************** Log File Navigator，简称lnav，是一款面向小规模的适用于 Linux 的高级日志文件查看器。 *********************${COLOR_RESET}\n"


sudo snap install lnav



如何使用

你可以不带参数执行它以查看默认文件集。

linuxmi@linuxmi:~/www.linuxmi.com$ lnav

使用 lnav 查看特定日志文件

要用 lnav 查看特定的日志文件，在 lnav 命令后面添加日志文件路径。例如我们想看 /var/log/dpkg.log 日志文件。如下图：

linuxmi@linuxmi:~/www.linuxmi.com$ lnav /var/log/dpkg.log



查看多个日志文件

linuxmi@linuxmi:~/www.linuxmi.com$ lnav /var/log/dpkg.log /var/log/kern.log

查看压缩的日志文件

linuxmi@linuxmi:~/www.linuxmi.com$ lnav -r /var/log/Xorg.0.log.old.gz

直方图视图

首先运行 lnav 然后按 i 键切换到/出直方图视图。



你可以搜索任何给定的字符串，它会在屏幕上高亮显示。首先运行 lnav 然后按 / 键并输入你想查找的字符串。为了测试，我搜索字符串 ubuntu，看下面的截图。



查看日志解析器结果

首先运行 lnav 然后按 p 键打开显示日志解析器结果。使用 lnav 查看特定日志文件
要用 lnav 查看特定的日志文件，在 lnav 命令后面添加日志文件路径。例如我们想看 /var/log/dpkg.log 日志文件。







echo -e "${PURPLE_BLACK}**************************** lsd  *********************${COLOR_RESET}\n"

cargo install lsd

或
curl -LO https://github.com/Peltoche/lsd/releases/download/0.21.0/lsd_0.21.0_amd64.deb

dpkg -i lsd_0.21.0_amd64.deb

或
wget https://github.com/Peltoche/lsd/releases/download/0.16.0/lsd-0.16.0-x86_64-unknown-linux-musl.tar.gz
tar zxvf lsd-0.16.0-x86_64-unknown-linux-musl.tar.gz
cd lsd-0.16.0-x86_64-unknown-linux-musl
cp ./lsd /usr/local/bin/



echo -e "${PURPLE_BLACK}****************************diff-so-fancy[11]是 git diff 的替代品  *********************${COLOR_RESET}\n"


npm install -g diff-so-fancy

直接可以在命令行调用

# git diff --color | diff-so-fancy
通过上述方式使用 diff-so-fancy 虽简单，但会把所有结果全部输出，并没显得差异化。我们可以通过设置 pager 对结果进行分页配置 git 以 diff-so-fancy 用于所有差异输出：

# git config --global core.pager " diff-so-fancy | less --tabs=4 -RFX "
# git config --global interactive.diffFilter " diff-so-fancy --patch "
将 diff-so-fancy 配置为 Git 的默认 diff 工具就可以了，每次执行 git diff，就会输出它的执行结果。



echo -e "${PURPLE_BLACK}**************************** bat  *********************${COLOR_RESET}\n"


sudo apt install ncdu


echo -e "${PURPLE_BLACK}**************************** colordiff  *********************${COLOR_RESET}\n"


sudo apt install colordiff

现在 检查两个文件之间的差异，在终端（Ctrl + Alt + T）中，我们将使用以下命令：


colordiff archivo1.txt archivo2.txt

我们将有可能使用diff命令并将其输出传递给colordiff，如以下命令所示：
diff -u archivo1.txt archivo2.txt | colordiff



sudo apt install grc

如下面的示例所示，它的语法非常简单：
grc diff archivo1.txt archivo2.txt

另一个可用的工具是 伊迪夫。 安装它就像打开终端（Ctrl + Alt + T）并使用以下命令一样简单：
sudo apt install icdiff
该工具的语法与本文中看到的先前选项一样简单
icdiff archivo1.txt archivo2.txt

另一个选择是使用vimdiff命令通过Vim编辑文件的两个或多个版本并显示差异：

vimdiff linuxidc linux




echo -e "${PURPLE_BLACK}****************************nmon 是一个系统管理员调谐器和基准测试工具  *********************${COLOR_RESET}\n"



sudo apt install nmon

echo -e "${PURPLE_BLACK}****************************如何在Linux上安装inxi ?  *********************${COLOR_RESET}\n"

sudo apt install inxi


显示硬盘和内存使用情况:
sudo inxi -D -m



要获取设备驱动程序、mac ID、接口以及IP地址等网络细节，可以使用 -n 或 --network-advanced  和 -i 或 --ip 选项组合。
inix -ni -c31



改变输出颜色

通过使用-c99选项选择全局配色方案，您还可以将特定的颜色类型设置为默认。

inxi -b -c99



或者，如果你想知道完整的细节，请传递 -F 或 --full 参数。

inxi -F


如果您想知道系统的基本细节，请使用 -b 或者 --basic 选项。

inxi -b




echo -e "${PURPLE_BLACK}****************************dstat 是一款生成Linux系统资源统计信息的功能强大、灵活和通用的工具 *********************${COLOR_RESET}\n"



Ubuntu/Mint和Debin系统：
本地软件库中有相关安装包，你可以用下面命令安装：
# sudo apt-get install dstat


-c：显示CPU系统占用，用户占用，空闲，等待，中断，软件中断等信息。

-C：当有多个CPU时候，此参数可按需分别显示cpu状态，例：-C 0,1 是显示cpu0和cpu1的信息。

-d：显示磁盘读写数据大小。

-D hda,total：include hda and total。

-n：显示网络状态。

-N eth1,total：有多块网卡时，指定要显示的网卡。

-l：显示系统负载情况。

-m：显示内存使用情况（包括used，buffer，cache，free值）。

-g：显示页面使用情况。

-p：显示进程状态。

-s：显示交换分区使用情况。

-S：类似D/N。

-r：I/O请求情况。

-y：系统状态。
-t ：将当前时间显示在第一行

--ipc：显示ipc消息队列，信号等信息。

--socket：用来显示tcp udp端口状态。

-a：此为默认选项，等同于-cdngy。

-v：等同于 -pmgdsc -D total。
–socket ：显示网络统计数据
–tcp ：显示常用的TCP统计
–udp ：显示监听的UDP接口及其当前用量的一些动态数据–fs ：显示文件系统统计数据（包括文件总数量和inodes值）
–nocolor ：不显示颜色（有时候有用）

--output 文件：此选项也比较有用，可以把状态信息以csv的格式重定向到指定的文件中，以便日后查看。例：dstat --output /root/dstat.csv & 此时让程序默默的在后台运行并把结果输出到/root/dstat.csv文件中。



显示一些关于CPU资源损耗的数据：
# dstat -c -y -l --proc-count --top-cpu



查看全部内存都有谁在占用：
# dstat -g -l -m -s --top-mem

echo -e "${PURPLE_BLACK}************************* i3WM配置 *************************${COLOR_RESET}\n"
echo -e "${PURPLE_BLACK}************************* 安装picom *************************${COLOR_RESET}\n"

cd ~/tmp
sudo apt install cmake meson git pkg-config asciidoc libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev  libpcre2-dev  libevdev-dev uthash-dev libev-dev libx11-xcb-dev
git clone https://github.com/jonaburg/picom.git
cd picom
git submodule update --init --recursive
meson --buildtype=release . build
LDFLAGS="-L/path/to/libraries" CPPFLAGS="-I/path/to/headers" meson --buildtype=release . build
ninja -C build
sudo ninja -C build install
cd
# 有时使用像 双河濑 你需要指定 – 实验后端 标志如下：
$ picom --config  ~/.config/picom/picom.conf --experimental-backends -b
$ picom --experimental-backends -b


sudo apt install compton xcompmgr


echo -e "${PURPLE_BLACK}************************* 安装 i3-gaps *************************${COLOR_RESET}\n"
sudo add-apt-repository ppa:regolith-linux/release
sudo apt update
sudo apt install i3-gaps

echo -e "${PURPLE_BLACK}************************* 安装polybar *************************${COLOR_RESET}\n"
echo ${PASSWD} | sudo -S echo "deb http://cz.archive.ubuntu.com/ubuntu groovy main universe" >>/etc/apt/sources.list
echo ${PASSWD} | sudo -S apt updade
echo ${PASSWD} | sudo -S apt install -y polybar

echo -e "${PURPLE_BLACK}************************* 安装 其他服务软件 *************************${COLOR_RESET}\n"

sudo  apt install -y suckless-tools libx11-dev libxft-dev libxinerama-dev gcc make feh

sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool

sudo apt-get install automake

sudo apt-get install libxcb-xrm-dev


sudo apt install libxcb-shape0-dev

sudo apt-get install libpcre3-dev

sudo apt-get install libcairo2-dev

sudo apt-get install libpango1.0-dev


echo -e "${PURPLE_BLACK}************************* i3status *************************${COLOR_RESET}\n"

sudo apt-get install autoconf libconfuse-dev libyajl-dev libasound2-dev libiw-dev asciidoc libpulse-dev libnl-genl-3-dev meson


https://i3wm.org/i3status/  下载i3status安装包
解压缩
cd i3status-2/.14

╭─   ~/下载/i3status-2.14/                                                                                                                                                       ✘ INT  base at  17:49:48
╰─❯

  mkdir build
  cd build
  meson ..
  ninja
  sudo ninja install


echo -e "${PURPLE_BLACK}************************* i3blocks *************************${COLOR_RESET}\n"
cd ~/tmp

git clone https://github.com/vivien/i3blocks.git


cd i3blocks
./autogen.sh
./configure
sudo make
sudo make install


echo -e "${PURPLE_BLACK}************************* i3blocks *************************${COLOR_RESET}\n"
sudo apt install autoconf gcc make pkg-config libpam0g-dev libcairo2-dev libfontconfig1-dev libxcb-composite0-dev libev-dev libx11-xcb-dev libxcb-xkb-dev libxcb-xinerama0-dev libxcb-randr0-dev libxcb-image0-dev libxcb-util-dev libxcb-xrm-dev libxkbcommon-dev libxkbcommon-x11-dev libjpeg-dev

To build/install i3lock-color, first install the dependencies listed above, then clone the repo:

git clone https://github.com/Raymo111/i3lock-color.git
cd i3lock-color
To build without installing, run:

./build.sh
To build AND install, run:

./install-i3lock-color.sh

echo -e "${PURPLE_BLACK}************************* 锁屏管理器：betterlockscreen, xautolock*************************${COLOR_RESET}\n"

wget https://github.com/pavanjadhaw/betterlockscreen/archive/refs/heads/main.zip
unzip main.zip

cd betterlockscreen-main/
chmod u+x betterlockscreen
cp betterlockscreen /usr/local/bin/

cp system/betterlockscreen@.service /usr/lib/systemd/system/
systemctl enable betterlockscreen@$USER


sudo apt install xautolock

echo -e "${PURPLE_BLACK}************************* 背光灯调整工具 *************************${COLOR_RESET}\n"
sudo  apt install -y light

echo -e "${PURPLE_BLACK}************************* 安装数字键盘工具, 用于进入dwm桌面后自动开启数字键盘 *************************${COLOR_RESET}\n"
sudo  apt install -y numlockx

sudo  apt install -y virtualbox-guest-utils virtualbox-guest-X11

echo -e "${PURPLE_BLACK}*************************  电源监控工具 *************************${COLOR_RESET}\n"
sudo  apt install -y acpi acpitool

echo -e "${PURPLE_BLACK}************************* 透明配置支持 *************************${COLOR_RESET}\n"
sudo  apt install -y compton
sudo  apt install -y xcompmg

echo -e "${PURPLE_BLACK}************************* 背景图片设置工具 *************************${COLOR_RESET}\n"
sudo  apt install -y feh

echo -e "${PURPLE_BLACK}*************************用于屏幕亮度的调节 *************************${COLOR_RESET}\n"
sudo  apt install -y xbacklight

echo -e "${PURPLE_BLACK}************************** 安装 nm-applet *************************${COLOR_RESET}\n"
sudo  apt install -y network-manager-gnome

echo -e "${PURPLE_BLACK}**************************  锁屏 *************************${COLOR_RESET}\n"
sudo  apt install slimlock  i3lock-fancy


echo -e "${PURPLE_BLACK}**************************  蓝牙 *************************${COLOR_RESET}\n"

sudo apt install blueman


sudo apt install alsa-utils  mate-power-manager  acpi  alsa-utils nitrogen

# mate-power-manager 电源管理工具
# acpi 电源配置接口工具(用于显示电池信息)
# alsa-utils 声音管理
# xfce4-appfinder 可以快速搜索程序的启动器
# nitrogen 壁纸管理器
echo -e "${PURPLE_BLACK}************************** rofi 是一个快捷的程序启动器 *************************${COLOR_RESET}\n"
sudo  apt install -y rofi

echo -e "${PURPLE_BLACK}************************* 安装dwmstatus *************************${COLOR_RESET}\n"
git clone git://git.suckless.org/dwmstatus
cd dwmstatus
make
sudo ake PREFIX=/usr install
cd


echo -e "${PURPLE_BLACK}************************** 护眼工具redshift *************************${COLOR_RESET}\n"

sudo apt-get update
sudo apt-get install redshift-gtk




echo -e "${PURPLE_BLACK}**************************  Spotify是一个音乐流媒体服务商*************************${COLOR_RESET}\n"

sudo snap install spotify

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 4773BD5E130D1D45



echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list


sudo apt update
sudo apt install spotify-client










