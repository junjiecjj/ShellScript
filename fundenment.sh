#!/bin/bash
#########################################################################
# File Name: test.sh
# Author: 陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2019.11.16
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

echo -e "${DEEPGREEN_RED}     ********************************颜色配置**********************   ${COLOR_RESET}\n"

echo -e  "各种颜色.....\n"

echo -e  "${BLACK_BLACK}黑底黑字${COLOR_RESET}   ${BLACK_RED}黑底红字${COLOR_RESET}   ${BLACK_GREEN}黑底绿字${COLOR_RESET}   ${BLACK_YELLOW}黑底黄字${COLOR_RESET}   ${BLACK_BLUE}黑底蓝字${COLOR_RESET}   ${BLACK_PURTPLE}黑底紫字${COLOR_RESET}   ${BLACK_DEEPGREEN}黑底深绿字${COLOR_RESET}   ${BLACK_WHITE}黑底白字${COLOR_RESET}\n"

echo -e  "${RED_BLACK}红底黑字${COLOR_RESET}   ${RED_RED}红底红字${COLOR_RESET}   ${RED_GREEN}红底绿字${COLOR_RESET}   ${RED_YELLOW}红底黄字${COLOR_RESET}   ${RED_BLUE}红底蓝字${COLOR_RESET}   ${RED_PURTPLE}红底紫字${COLOR_RESET}   ${RED_DEEPGREEN}红底深绿字${COLOR_RESET}   ${RED_WHITE}红底白字${COLOR_RESET}\n"

echo -e  "${GREEN_BLACK}绿底黑字${COLOR_RESET}   ${GREEN_RED}绿底红字${COLOR_RESET}   ${GREEN_GREEN}绿底绿字${COLOR_RESET}   ${GREEN_YELLOW}绿底黄字${COLOR_RESET}   ${GREEN_BLUE}绿底蓝字${COLOR_RESET}   ${GREEN_PURTPLE}绿底紫字${COLOR_RESET}   ${GREEN_DEEPGREEN}绿底深绿字${COLOR_RESET}   ${GREEN_WHITE}绿底白字${COLOR_RESET}\n"

echo -e  "${YELLOW_BLACK}黄底黑字${COLOR_RESET}   ${YELLOW_RED}黄底红字${COLOR_RESET}   ${YELLOW_GREEN}黄底绿字${COLOR_RESET}   ${YELLOW_YELLOW}黄底黄字${COLOR_RESET}   ${YELLOW_BLUE}黄底蓝字${COLOR_RESET}   ${YELLOW_PURTPLE}黄底紫字${COLOR_RESET}   ${YELLOW_DEEPGREEN}黄底深绿字${COLOR_RESET}   ${YELLOW_WHITE}黄底白字${COLOR_RESET}\n"

echo -e  "${BLUE_BLACK}蓝底黑字${COLOR_RESET}   ${BLUE_RED}蓝底红字${COLOR_RESET}   ${BLUE_GREEN}蓝底绿字${COLOR_RESET}   ${BLUE_YELLOW}蓝底黄字${COLOR_RESET}   ${BLUE_BLUE}蓝底蓝字${COLOR_RESET}   ${BLUE_PURTPLE}蓝底紫字${COLOR_RESET}   ${BLUE_DEEPGREEN}蓝底深绿字${COLOR_RESET}   ${BLUE_WHITE}蓝底白字${COLOR_RESET}\n"

echo -e  "${PURPLE_BLACK}紫底黑字${COLOR_RESET}   ${PURPLE_RED}紫底红字${COLOR_RESET}   ${PURPLE_GREEN}紫底绿字${COLOR_RESET}   ${PURPLE_YELLOW}紫底黄字${COLOR_RESET}   ${PURPLE_BLUE}紫底蓝字${COLOR_RESET}   ${PURPLE_PURTPLE}紫底紫字${COLOR_RESET}   ${PURPLE_DEEPGREEN}紫底深绿字${COLOR_RESET}   ${PURPLE_WHITE}紫底白字${COLOR_RESET}\n"

echo -e  "${DEEPGREEN_BLACK}深绿底黑字${COLOR_RESET}   ${DEEPGREEN_RED}深绿底红字${COLOR_RESET}   ${DEEPGREEN_GREEN}深绿底绿字${COLOR_RESET}   ${DEEPGREEN_YELLOW}深绿底黄字${COLOR_RESET}   ${DEEPGREEN_BLUE}深绿底蓝字${COLOR_RESET}   ${DEEPGREEN_PURTPLE}深绿底紫字${COLOR_RESET}   ${DEEPGREEN_DEEPGREEN}深绿底深绿字${COLOR_RESET}   ${DEEPGREEN_WHITE}深绿底白字${COLOR_RESET}\n"

echo -e  "${WHITE_BLACK}白底黑字${COLOR_RESET}   ${WHITE_RED}白底红字${COLOR_RESET}   ${WHITE_GREEN}白底绿字${COLOR_RESET}   ${WHITE_YELLOW}白底黄字${COLOR_RESET}   ${WHITE_BLUE}白底蓝字${COLOR_RESET}  ${WHITE_PURTPLE}白底紫字${COLOR_RESET}   ${WHITE_DEEPGREEN}白底深绿字${COLOR_RESET}   ${WHITE_WHITE}白底白字${COLOR_RESET}\n"


PASSWD="@chen1013"

echo -e "\e[46;31;1m\t\t\t\t\t\t 系统更新.....\e[0m \n"


echo -e "\033[41m\033[37m\033[1m\033[4m红底+白字+高亮+下划线\033[0m \n"



echo -e "${DEEPGREEN_RED}                颜色结束                       ${COLOR_RESET}\n"



echo "hello, jack!!!"

for file in `ls ./`
do
    echo ${file}
done


# 显示换行
 echo -e "OK! \n" # -e 开启转义
 echo "It is a test"

echo -e  " ${WHITE_BLUE}------------1-------------------${COLOR_RESET}\n"


s="hello,jack!!!"

echo -e 's 为 ${s}\n,lllllllllll\n'

echo -e "s 为 ${s}\n, jjjjjj\n"

# a 修饰成只读变量
 readonly s

S="dddddd\n"

# unset 删除变量，但是无法删除只读变量
# unset a
echo -e ${s}

echo -e ${S}

unset S

echo -e ${S}
echo -e "${WHITE_BLUE}---------------3-----------------${COLOR_RESET}\n"

a=1234
let "a+=1"
echo ${a}

b=${a/12/BB}

echo ${b}

let "b+=1"
echo ${b}

e=""
echo ${e}

# 变量 e 定义为空值
 e=""
echo ${e}  # Output: 没有任何输出

 let "e+=1" # 空值 + 1
echo "e = ${e}"  # Output: 1

# 变量 f 未定义
 echo "f = $f"   # Output: f =

let "f+=1"
echo "f = ${f}" # Output: f = 1



echo -e " ${WHITE_BLUE}----------------4 执行数学运算 --------------------${COLOR_RESET}\n"


:<<EOF

在shell脚本中有以下几种途径来进行数学运算。
1. expr 命令
2. 使用方括号
3. 使用双圆括号:$(( operation ))。


1. expr命令

操作符                              描述

ARG1 | ARG2             如果ARG1 既不是null也不是零值,返回ARG1 ;否则返回ARG2
ARG1 & ARG2             如果没有参数是null或零值,返回ARG1 ;否则返回0
ARG1 < ARG2             如果ARG1 小于ARG2,返回1;否则返回0
ARG1 <= ARG2            如果ARG1 小于或等于ARG2,返回1;否则返回0
ARG1 = ARG2             如果ARG1 等于ARG2,返回1;否则返回0
ARG1 != ARG2            如果ARG1 不等于ARG2 ,返回1;否则返回0
ARG1 >= ARG2            如果ARG1 大于或等于ARG2,返回1;否则返回0
ARG1 > ARG2             如果ARG1 大于ARG2,返回1;否则返回0
ARG1 + ARG2             返回ARG1 和ARG2 的算术运算和
ARG1 - ARG2             返回ARG1 和ARG2 的算术运算差
ARG1 * ARG2             返回ARG1 和ARG2 的算术乘积
ARG1 / ARG2             返回ARG1 被ARG2 除的算术商
ARG1 % ARG2             返回ARG1 被ARG2 除的算术余数
STRING : REGEXP         如果REGEXP 匹配到了STRING中的某个模式,返回该模式匹配
match STRING REGEXP     如果REGEXP 匹配到了STRING中的某个模式,返回该模式匹配
substr STRING POS LENGTH   返回起始位置为POS (从1 开始计数)、长度为LENGTH个字符的子字符串
index STRING CHARS       返回在STRING 中找到CHARS字符串的位置;否则,返回0
length STRING             返回字符串STRING的数值长度
TOKEN                  将TOKEN 解释成字符串,即使是个关键字
(EXPRESSION)           返回EXPRESSION的值



2. 使用方括号
在bash中,在将一个数学运算结果赋给某个变量时,可以用美元符和方括号($[ operation ])将数学表达式围起来。

用方括号执行shell数学运算比用expr命令方便很多。这种技术也适用于shell脚本。


3. 使用双圆括号:  $(( operation ))。


4. let语句

EOF


var1=$[1 + 5]
echo $var1



var2=$[$var1 * 2]
echo $var2


var1=100
var2=50
var3=45
var4=$[$var1 * ($var2 - $var3)]
echo The final result is $var4



value1=10
value2=15
value3=$(( $value1 * $value2 ))
echo "The answer is $value3"


func1()
{
    echo "This is an example of a function"
}
count=1
while [ $count -le 5 ]; do
    func1
    count=$(( $count + 1 ))
done
echo "This is the end of the loop"
func1
echo "This is the end of the script"


# (())内不支持小数
value1=$((4*5))
(( value2 = 4 * 5 ))
printf "%6.3f\n" $value1 $value2



# let 不支持小数
let value1=" 4 * 5 / 3 "
echo $value1
printf "%6.3f\n" $value1


echo -e " ${WHITE_BLUE}----------------5--------------------${COLOR_RESET}\n"



echo $#       #返回向脚本传递的参数的个数
echo  "The last parameter was ${!#}"

#  $*变量会将命令行上提供的所有参数当作一个单词保存。这个单词包含了命令行中出现的每一个参数值。基本上$*变量会将这些参数视为一个整体,而不是多个个体。
echo -e "$* \n"  #以一个单字符串显示所有向脚本传递的参数
echo "Using the \$* method: $*"

#  $@变量会将命令行上提供的所有参数当作同一字符串中的多个独立的单词。这样你就能够遍历所有的参数值,得到每个参数。这通常通过for命令完成。
echo -e "$@ \n"  #与 $* 相同，但是使用时加引号，并在引号中返回每个参数。
echo "Using the \$@ method: $@"

# 注意,从表面上看,两个变量产生的是同样的输出,都显示出了所有命令行参数。
echo
count=1
for param in "$*"; do
    echo "\$* Parameter #$count = $param"
    count=$[ $count + 1 ]
done


echo
count=1

for param in "$@";do
    echo "\$@ Parameter #$count = $param"
    count=$[ $count + 1 ]
done
echo -e " ${WHITE_BLUE}-----------------6 数组 ------------------${COLOR_RESET}\n"

my_arr=(value1 value2 value3 value4)

echo -e "${my_arr[2]} \n"  #访问数组元素的一般格式

# 遍历数组格式 1
echo -e  "my_arr: ${my_arr[*]}\n"

# 遍历数组格式 2
echo -e "my_arr: ${my_arr[@]}\n"

#获取数组长度格式 1
echo -e " 数组 my_arr 长度为： ${#my_arr[*]} \n"

#获取数组长度格式 2
echo -e " 数组 my_arr 长度为： ${#my_arr[@]} \n"

echo -e " ${WHITE_BLUE}-----------------6------------------${COLOR_RESET}\n"

#定义字符串
str1=hello
str2='hello'
str3="hello"

echo $str1
echo $str2
echo $str3

#获取字符串的长度
my_str="hello world"
echo "my_str length: ${#my_str}"

#字符串拼接
str1="hello"
str2="world"

str3=${str1}"  "${str2}
echo ${str3}

#提取字符串

#从位置 1 开始提取子串
str="hello world"

sub_str=${str:1}
echo -e "sub_str1: ${sub_str}\n"

#从位置 1 开始提取长度为 3 的子串
str="hello world"

sub_str=${str:1:3}
echo -e  "sub_str2: ${sub_str}\n"

#------ 删除子串 ----------------------

#表达式                        	含义
#${string#substring}	       从 string 的开头，删除最短匹配 substring 的子串
#${string##substring}	       从 string 的开头，删除最长匹配 substring 的子串
#${string% substring}	       从 string 的结尾，删除最短匹配 substring 的子串
#${string%% substring}	       从 string 的结尾，删除最长匹配 substring 的子串
# 这四种模式都不会改变string的值，结构中支持通配符，*表示零个或多个字符，?表示仅与一个任意字符匹配，
# []表示匹配其中的一个字符
#记忆：

#   #表示从头匹配，% 表示从尾匹配
#   一个符号（# 或者 %）表示最短匹配，两个符号（## 或者 %%）表示最长匹配

str="abcabcdefabcabc"

# 从 str 的开头，删除最短匹配的以 a 开头 c 结尾的子串
# 将删除最左端的 abc
# 输出：abcdefabcabc
echo -e  " str1 = ${str#a*c} \n"

# 从 str 的开头，删除最长匹配以 a 开头 b 结尾的子串
# 将删除 abcabcdefabcab
# 输出：c
echo -e  " str2 = ${str##a*b}\n"

# 从 str 的结尾，删除最短匹配以 a 开头 c 结尾的子串
# 将删除最右端的 abc
# 输出：abcabcdefabc
echo -e  " str3 = ${str%a*c} \n"

# 从 str 的结尾，删除最长匹配以 a 开头 c 结尾的子串
# 将删除整个字符串
# 输出：空
echo -e  " str4 = ${str%%a*b}\n"


# ---------------------------------------------- 替换子串 -----------------

#  --- 表达式 ------------------------------- 含义 ------------------
#  ${string: num}                          提取num个字符直到末尾，如果num为正，则从左边0处开始，若num为负数，从右边开始，必须在:后面加空格或者将num用括号()括起来
#  ${string/substring/replacement}	      使用 $replacement 来代替第一个匹配的 $substring
#  ${string//substring/replacement}	      使用 $replacement 代替所有匹配的 $substring
#  ${string/#substring/replacement}    	  如果 $string 的前缀匹配 $substring, 那么就用 $replacement 来代替匹配到的 $substring
#  ${string/% substring/replacement}	  如果 $string 的后缀匹配 $substring, 那么就用 $replacement 来代替匹配到的 $substring

#实例：

str="abcdefabc"

# 用 hello 替换第一个 abc
echo -e  " STR1 = ${str/"abc"/"hello"} \n"    # 输出：hellodefabc

# 用 hello 替换所有的 abc
echo -e  " STR2 = ${str//"abc"/"hello"} \n"   # 输出：hellodefhello

# 前缀匹配替换
echo -e  " STR3 = ${str/#"abc"/"world"} \n"   # 输出：worlddefabc

# 后缀匹配替换
echo -e  " STR4 = ${str/%"abc"/"world"} \n"  # 输出：abcdefworld

str="abcdefhijklmn"
echo -e   " STR5 = ${str: 3} \n"
echo -e   " STR6 = ${str: -3} \n"


# # ---------------------------------------------- 替换子串 -----------------
# 变量设定方式                  str没有设定                       str为空字符串                 str已设定为非空字符串
# --------------------------------------------------------------------------------------------------------------------
# var=${str-expr}                 var=expr                        var=                        var=$str
# --------------------------------------------------------------------------------------------------------------------
# var=${str:-expr}                var=expr                        var=expr                    var=$str
# --------------------------------------------------------------------------------------------------------------------
# var=${str+expr}                 var=                            var=expr                    var=expr
# --------------------------------------------------------------------------------------------------------------------
# var=${str:+expr}                 var=                          var=                        var=expr
# --------------------------------------------------------------------------------------------------------------------
# var=${str=expr}                 str=expr                        str不变                     str不变
#                                 var=expr                        var=                        var=$str
# --------------------------------------------------------------------------------------------------------------------
# var=${str:=expr}                 str=expr                        str=expr                    str不变
#                                 var=expr                        var=expr                    var=$str
# --------------------------------------------------------------------------------------------------------------------
# var=${str?expr}                 expr输出至stderr                var=                        var=$str
# --------------------------------------------------------------------------------------------------------------------
# var=${str:?expr}                 expr输出至stderr               expr输出至stderr           var=$str
# --------------------------------------------------------------------------------------------------------------------




echo -e " ${WHITE_BLUE}-----------------6------------------ ${COLOR_RESET}\n"

for skill in C++ C Python Java; do
    echo -e "I am good at ${skill} Script \n"
done


for skill in "C++ C Python Java"; do
    echo -e "I am good at ${skill} Script \n"
done

skills="C++ C Python Java"
for skill in ${skills}; do
    echo -e "I am good at ${skill} Script \n"
done

for skill in "'C++' 'Python' 'Java'"; do
    echo -e "I am good at ${skill} Script \n"
done


for IP in "129.20.1.11 129.20.1.12 169.28.1.33"; do
    echo -e "Now IP is ${IP}\n"
done


for IP in 129.20.1.11 129.20.1.12 169.28.1.33; do
    echo -e "Now IP is ${IP}\n"
done

#sudo cp ./test.sh  ./fundenment.sh

your_name="runboy"
greeting_1="hello, "${your_name}"!!"
greeting_2='hello, '$your_name' !'
greeting_3='hello, '${your_name}' !'
greeting_4='hello, ${your_name} !'
greeting_5='hello, $your_name !'
greeting_6="hello, $your_name !"

echo -e "${greeting_1} \n"
echo -e "${greeting_2} \n"
echo -e "${greeting_3} \n"
echo -e "${greeting_4} \n"
echo -e "${greeting_5} \n"
echo -e "${greeting_6} \n"


echo -e " 请输入您的名字：\n"
read name
echo -e "hello, ${name}\n"
echo -e "hello, ${1}\n"

echo -e "it is dick\n" > test.txt

# 最全时间格式
echo  `date`
# 年月日
echo  `date +%y%m%d`
# 时分
echo  `date +%H%M`
#
echo  `date +%B%d,%T`
#时分
echo  `date +%k%M`

echo  `date +%s`

printf "%-10s %-8s %-4s\n"    姓名 性别 体重kg
printf "%-10s %-8s %-4.2f\n"  "郭靖" 男 "66.1234"
printf "%-10s %-8s %-4.2f\n"  '杨过' 男 '48.6543'
printf "%-10s %-8s %-4.2f\n"  郭芙 女 47.9876

printf "%s\n" "aaaaaaaa" "ssssss"

printf  "${WHITE_BLUE}%s${COLOR_RESET}\n" " --------------7----------------------"
# format-string 为双引号
printf "%d %s\n" 1 "abc"

# 单引号与双引号效果一样
printf '%d %s\n' 1 "abc"

# 没有引号也可以输出
printf "%s\n" abcdef

# 格式只指定了一个参数，但多出的参数仍然会按照该格式输出，format-string 被重用
printf "%s\n" abc def

printf "%s\n" 123 456

printf "%s %s %s\n" a b c d e f g h i j

# 如果没有 arguments，那么 % s 用 NULL 代替，% d 用 0 代替
printf "%s and %d \n"

printf  "${WHITE_BLUE}%s${COLOR_RESET}\n" " --------------8----------------------"

a=123
b=123

if test $[a] -ge $[b]
then
    echo "a >= b"
else
    echo "a<b"
fi

#代码中的 [] 执行基本的算数运算
a=5
b=6

result=$[a+b] # 注意等号两边不能有空格
echo -e  "result 为： $result \n"

result=$[$a+$b] # 注意等号两边不能有空格
echo -e  "result 为： $result \n"

result1=$(($a+$b)) # 注意等号两边不能有空格，a,b 不能用 {} 括起来
echo -e  "result1 为： $result1 \n"

result1=$((a+b)) # 注意等号两边不能有空格
echo -e  "result1 为： $result1 \n"


printf  "${WHITE_BLUE}%s${COLOR_RESET}\n" " --------------9. if else ----------------------"

num1="ru1noob"
num2="runoob"
if test $num1 = $num2
then
    echo ' 两个字符串相等！'
else
    echo ' 两个字符串不相等！'
fi

printf  "${WHITE_BLUE}%s${COLOR_RESET}\n" " --------------10. case----------------------"

echo ' 输入 1 到 4 之间的数字:'
echo ' 你输入的数字为:'
read aNum
case $aNum in
    1)  echo ' 你选择了 1'
    ;;
    2)  echo ' 你选择了 2'
    ;;
    3)  echo ' 你选择了 3'
    ;;
    4)  echo ' 你选择了 4'
    ;;
    *)  echo ' 你没有输入 1 到 4 之间的数字'
    ;;
esac


case $USER in
    rich | barbara)
        echo "Welcome, $USER"
        echo "Please enjoy your visit";;
    testing)
        echo "Special testing account";;
    jessica)
        echo "Do not forget to log off when you're done";;
    jack)
        echo " Oh, Jack, I have wating you for such a long time....";;
    *)
        echo "Sorry, you are not allowed here";;
esac

printf  "${WHITE_BLUE}%s${COLOR_RESET}\n" " --------------11.  for----------------------"

for str in This is a string
do
    echo -e  "${str}\n"
done

printf "${WHITE_BLUE}%s${COLOR_RESET}\n" " ----------------12. while---------------------"

int=1
while((${int}<=10))
do
    echo ${int}
    let "int+=1"  #这里可以写 int++, "int++" int+=1 都可以
 done

echo -e "\n ${WHITE_BLUE}----------------13. until------------------${COLOR_RESET}\n"
a=0

until [ ! $a -lt 10 ]
do
   echo $a
   a=`expr $a + 1`
done


printf  "\n ${WHITE_BLUE}----------------14. break----------------------${COLOR_RESET}\n"

:<<EOF
#无限循环语法格式：
while :
do
    command
done
 或者
 while true
do
    command
done
 或者
 for (( ; ; ))
EOF


while true  #或 while :
do
    echo -n " 请输入一个数字:"
    read aNum
    case ${aNum} in
        1|2|3|4|5) echo -e  " 你输入的数字为 ${aNum}\n"
            ;;
        *) echo -e  " 你输入的数字不是 1 到 5 之间的数字，游戏结束 \n"
            break
            ;;
    esac
done

# break 命令是退出循环的一个简单方法。可以用break 命令来退出任意类型的循环,包括while和until循环。
# 有几种情况可以使用break命令,本节将介绍这些方法。

#1 跳出单个循环


for var1 in 1 2 3 4 5 6 7 8 9 10
do
    if [ $var1 -eq 5 ]
    then
        break
    fi
    echo "Iteration number: $var1"
done
echo -e "The for loop is completed"

#2 for循环通常都会遍历列表中指定的所有值。但当满足if-then的条件时, shell会执行break命令,停止for循环。
# 这种方法同样适用于while和until循环。
var1=1
while [ $var1 -lt 10 ]
do
    if [ $var1 -eq 5 ];then
        break
    fi
    echo -e "Iteration : $var1\n"
    var1=$[ $var1+1 ]
done
echo -e "The while loop is completed\n"

# 跳出内部循环, 在处理多个循环时,break命令会自动终止你所在的最内层的循环
for (( a=1; a<4; a++ )); do
    echo "outer loop: $a"
    for(( b=1; b<100; b++ )); do
        if [ $b -eq 5 ]; then
            break
        fi
        echo -e "   Inner loop : $b"
    done
done

array=(1 2 3 1)
for (( i = 0; i < ${#array[*]}; i++ )); do
    echo ${array[$i]}
done

#3 有时你在内部循环,但需要停止外部循环。break命令接受单个命令行参数值: break n

for (( a=1; a<4; a++ )); do
    echo -e "Outer loop: $a"
    for (( b=1; b<100; b++ )); do
        if [ $b -gt 4 ]
        then
            break 2
        fi
        echo "  Inner Loop:$b"
    done
done


printf  "${WHITE_BLUE}%s${COLOR_RESET}\n" " --------------15. continue----------------------\n"

# :<<EOF
while :
do
    echo -n " 输入 1 到 5 之间的数字: "
    read aNum
    case $aNum in
        1|2|3|4|5) echo -e " 你输入的数字为 $aNum! \n"
        ;;
        *) echo -e " 你输入的数字不是 1 到 5 之间的！\n"
            # continue
            echo " 游戏结束 "
            break
        ;;
    esac
done

# EOF


for (( var1 = 1; var1 < 15; var1++ ));do
    if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
    then
        continue
    fi
    echo "Iteration number: $var1"
done



while echo "while iteration: $var1"
    [ $var1 -lt 15 ];do
    if [ $var1 -gt 5 ] && [ $var1 -lt 10 ]
    then
        continue
    fi
    echo "Inside iteration number: $var1"
    var1=$[ $var1 + 1 ]
done



for (( a = 1; a <= 5; a++ ));do
    echo "Iteration $a:"
    for (( b = 1; b < 3; b++ ));do
        if [ $a -gt 2 ] && [ $a -lt 4 ]
        then
            continue 2
        fi
        var3=$[ $a * $b ]
        echo "
        The result of $a * $b is $var3"
    done
done


echo -e "\n ${WHITE_BLUE}------------16. 重定向 ------------------${COLOR_RESET}\n"

who > users

wc -l < users

cat << ASSS
 欢迎来到
菜鸟教程
 www.runoob.com
ASSS

echo -e "\n ${WHITE_BLUE}------------17. \`\`，(),[],(()),[[]],expr, 等的用法 --------------------${COLOR_RESET}\n"

#  ``：引用一个命令的执行结果，$() 也是一样
#  在 bash shell 中，$() 与 ``(反引号) 都是用来做命令替换 (command substitution) 的。

echo -e " 当前目录 1:`pwd`"

echo -e " 当前目录 2:$(pwd)"

path1=`pwd`
echo -e " 当前目录 3: ${path1}"

path2=$(pwd)
echo -e " 当前目录 4: ${path2}"

string=expr pwd    #  = 两边不能有空格

 echo -e "ls -l 输出：`ls -l`"


:<<EOF
echo `echo \\` 与 echo $(echo \\) 的输出分别是什么？解释原因。
原因： `` 里面的 \ 是一个特殊字符，可以用它来引用特殊的字符（当然包括它自身 \），而 $() 里面的 \ 只是普通字符。
echo `echo \\` 命令，里层的 echo \\ 得到的结果 \，于是外层命令为 echo \, 输出结果就为空了。
echo $(echo \\) 命令，里层的 \ 不再作为特殊字符，其输出就是 \\, 于是外层命令为 echo \\, 输出结果就为 \ 了。
EOF

echo -e " echo \`echo \\ \` 输出:\n"
echo `echo \\`

echo -e " echo \$(echo \\\\\\) 输出:\n"
echo $(echo \\)

x=10
y=20

echo "x=${x}, y=${y}"

val1=$(($x+$y))
echo " val1 ${x} + ${y} = $val1"

val2=$((x+y))
echo " val2 ${x} + ${y} = $val2"

val3=`expr ${x} + ${y}`
echo " val3 ${x} + ${y} = $val3"

let val4=${x}+${y}
echo " val4 ${x} + ${y} = $val4"


:<<EOF
[] 即为 test 命令的另一种形式。
你必须在左括号的右侧和右括号的左侧各加一个空格，否则会报错。
test命令可以判断三类条件:
 数值比较
 字符串比较
 文件比较

 数值比较
-eq 检测两个数是否相等，相等返回 true。                     [$a -eq $b] 返回 false。
-ne 检测两个数是否不相等，不相等返回 true。                 [$a -ne $b] 返回 true。
-gt 检测左边的数是否大于右边的，如果是，则返回 true。       [$a -gt $b] 返回 false。
-lt 检测左边的数是否小于右边的，如果是，则返回 true。       [$a -lt $b] 返回 true。
-ge 检测左边的数是否大于等于右边的，如果是，则返回 true。   [$a -ge $b] 返回 false。
-le 检测左边的数是否小于等于右边的，如果是，则返回 true。   [$a -le $b] 返回 true。
EOF

a=1
if [ $a -ge  0 ]  #对于数字，-eq,-ne,-gt,-ge,-lt,-le, 或者转义，但是只能转义 ">,<"，\<,\>
then
    echo -e "a 大于等于 0\n"
else
    echo -e "a 小于 0\n"
fi


str="abccc"

:<<EOF
 字符串比较

str1 = str2
 检查str1是否和str2相同
str1 != str2
 检查str1是否和str2不同
str1 < str2
 检查str1是否比str2小
str1 > str2
 检查str1是否比str2大
-n str1
 检查str1的长度是否非0
-z str1
 检查str1的长度是否为0

大于符号或小于符号必须要转义，否则会被理解成重定向。
EOF

if [ ${str} = "abc" ]  #对于字符串，= ，！=， -z ，-n
then
    echo -e "str 等于 \"abc\" \n"
else
    echo -e "str 不等于 \"abc\" \n"
fi



echo -e "\n ${WHITE_BLUE}------------------------18.  -------------------------${COLOR_RESET}\n"
<<EOF
 文件比较
文件测试运算符用于检测 Unix 文件的各种属性。
属性检测描述如下：
操作符  说明    举例
-b file 检测文件是否是块设备文件，如果是，则返回 true。 [-b $file] 返回 false。
-c file 检测文件是否是字符设备文件，如果是，则返回 true。   [-c $file] 返回 false。
-d file 检测文件是否是目录，如果是，则返回 true。   [-d $file] 返回 false。
-f file 检测文件是否是普通文件（既不是目录，也不是设备文件），如果是，则返回 true。 [-f $file] 返回 true。
-g file 检测文件是否设置了 SGID 位，如果是，则返回 true。   [-g $file] 返回 false。
-k file 检测文件是否设置了粘着位 (Sticky Bit)，如果是，则返回 true。    [-k $file] 返回 false。
-p file 检测文件是否是有名管道，如果是，则返回 true。   [-p $file] 返回 false。
-u file 检测文件是否设置了 SUID 位，如果是，则返回 true。   [-u $file] 返回 false。
-r file 检测文件是否可读，如果是，则返回 true。 [-r $file] 返回 true。
-w file 检测文件是否可写，如果是，则返回 true。 [-w $file] 返回 true。
-x file 检测文件是否可执行，如果是，则返回 true。   [-x $file] 返回 true。
-s file 检测文件是否为空（文件大小是否大于 0），不为空返回 true。   [-s $file] 返回 true。
-e file 检测文件（包括目录）是否存在，如果是，则返回 true。 [-e $file] 返回 true。
其他检查符：
-S: 判断某文件是否 socket。
-L: 检测文件是否存在并且是一个符号链接。
EOF

file="/var/www/runoob/test.sh"
file="/home/jack/.config"
if [ -r $file  ]
then
       echo " 文件可读 "
   else
          echo " 文件不可读 "
fi
if [ -w $file  ]
then
       echo " 文件可写 "
   else
          echo " 文件不可写 "
fi
if [ -x $file  ]
then
       echo " 文件可执行 "
   else
          echo " 文件不可执行 "
fi
if [ -f $file  ]
then
       echo " 文件为普通文件 "
   else
          echo " 文件为特殊文件 "
fi
if [ -d $file  ]
then
       echo " 文件是个目录 "
   else
          echo " 文件不是个目录 "
fi
if [ -s $file  ]
then
       echo " 文件不为空 "
   else
          echo " 文件为空 "
fi
if [ -e $file  ]
then
       echo " 文件存在 "
   else
          echo " 文件不存在 "
fi

:<<EOF
(()) 及 [[ ]] :它们分别是 [ ] 的针对数学比较表达式和字符串表达式的加强版。

$(()) 是用来作整数运算的。
在 bash 中， $(()) 的整数运算符号大致有这些：
+ - * /    分别为 "加、减、乘、除"。
%          余数运算，(模数运算)
++          自加
 --          自减
双括号命令允许你在比较过程中使用高级数学表达式。test 命令只能在比较中使用简单的算术操作。双括号命令提供了更多的数学符号,这些符号对于用过其他编程语言的程序员而言并不陌生。双括号命令的格式如下:(( expression ))
expression可以是任意的数学赋值或比较表达式。除了test命令使用的标准数学运算符,还支持其他的
常见的用于 (()) 的测试符号有如下这些：
符号	符号名称
 <	   小于号
 >   	大于号
 <=	   小于或等于
 >=	   大于或等于
 ==	   等于
 !=	   不等于
 (()) 不需要再将表达式里面的大小于符号转义，除了可以使用标准的数学运算符外，还增加了以下符号：
val++
val--
++val
--val
!          逻辑求反
 &&         逻辑和
 ||         逻辑或
 **         幂运算
 <<         左移运算符
 >>         右移运算符
 ~          “取反” 运算符,位求反
 &          “按位与” 运算符，位布尔和
 |          位布尔或
 ^          “异或” 运算符
双括号中的变量可以在其前面加 $ 符号来替换， 也可以不用。括号内支持多个表达式用逗号分开。
单纯用 (()) 也可重定义变量值，其实就是赋值运算符，比如 a=5; ((a++)) 可将 $a 重定义为 6



双方括号命令提供了针对字符串比较的高级特性。双方括号命令的格式如下:
[[ expression ]]
 使用 [[...]] 条件判断结构，而不是 [ ... ]，能够防止脚本许多逻辑错误，比如，&&、||、< 和 > 操作符能够
正常存在于 [[]] 条件判断结构中，但是如果出现在 [ ] 结构中的话，会报错。比如可以直
接使用 if [[$a != 1 && $a != 2]], 如果不适用双括号，则为 if [ $a -ne 1 ] && [ $a != 2 ] 或者 if [ $a -ne 1 -a $a != 2 ]。
EOF

a=-1
if (( $a >=  0 )) #也可以用 if [[$a> 0]] 但是不能用 if [[ $a >= 0 ]]
then
    echo -e "a 大于等于 0\n"
else
    echo -e "a 小于 0\n"
fi

# >=号两边可以没有空格
if (($a>=0))
then
    echo -e "a 大于等于 0\n"
else
    echo -e "a 小于 0\n"
fi

# 无效
if [[ $a>=0 ]]
then
    echo -e "a 大于等于 0\n"
else
    echo -e "a 小于 0\n"
fi


# 无效
if [[ ${a}>=0 ]]
then
    echo -e "a 大于等于 0\n"
else
    echo -e "a 小于 0\n"
fi


# 报错
# if [[${a}>=0]]
# then
#     echo -e "a 大于等于 0\n"
# else
#     echo -e "a 小于 0\n"
# fi


# 报错
# if [[ ${a} >= 0 ]]
# then
#     echo -e "a 大于等于 0\n"
# else
#     echo -e "a 小于 0\n"
# fi


a=12

if (( ${a}!=1 && ${a} != 2 ))
then
    echo -e "a 不等于 1 且 a 不等于 2\n"
else
    echo -e "a 等于 1 或者等于 2\n"
fi


if [[ ${a}!=1 && ${a} != 2 ]]
then
    echo -e "a 不等于 1 且 a 不等于 2\n"
else
    echo -e "a 等于 1 或者等于 2\n"
fi

echo -e " 请输入你想进入的目录：\n"
read path
#cd ${path}

if [[ ${path} = "/home/jack/" ]]
then
    echo -e " 进入家目录 \n"
    cd ${path}
else
    echo -e " 进入非家目录 \n"
    cd ${path}
fi



echo -e "\n ${WHITE_BLUE}------------------------18. 文件测试 -------------------------${COLOR_RESET}\n"
echo -e " 当前目录:`pwd`"
cd /home/jack/

echo -e " 当前目录:`pwd`"

read -p " 请输入(等待10s)你的爱好：" -t 10 named

echo ${named}


echo -e "\n ${WHITE_BLUE}------------------------19. 单小括号/单大括号 -------------------------${COLOR_RESET}\n"
# (cmd1; cmd2; cmd3)    新开一个shell一次执行命令cmd1、2、3，各个命令之间用分号隔开，最后一个命令后面可以没有分号
# { cmd1; cmd2; cmd3;}    在当前shell顺序执行命令cmd1、2、3，各个命令之间用分号隔开，最后一个命令后必须有分号，第一条命令和左括号之间必须有空格。



echo -e "\n ${WHITE_BLUE}------------------------20. 使用 Bash printf 命令打印格式化输出 -------------------------${COLOR_RESET}\n"

printf "我的兄弟 % s 今年 % d 岁.\n" 当年的大师兄 28

printf "Hello World www.linuxmi.com Linux 迷 \n"
# 注意末尾的换行符 \n 吗？echo 和 printf 命令之间的区别在于，echo 会在末尾自动添加一个新行字符，但对于 printf，则必须显式添加它。

# 请记住，格式字符串会尝试应用于所有参数。这就是为什么您应该特别注意它的原因。
printf "Hello, % s! \n" www.linuxmi.com Linux 迷
Hello, www.linuxmi.com!
Hello, Linux 迷！

# 同样，您还应该注意格式字符串中需要的格式说明符类型。如上例所示，如果找不到预期的参数，它将显示默认值，字符串为 null，整数为 0。
printf "你好 % s, 我们的网址为 % d. \n" Linux 迷 www.linuxmi.com 628

# 有几种格式说明符可用于以所需格式显示输出。以下是一些最常见的方法：
# 字符        用法
# %s         字符串
# %c         单个字符
# %d         整数
# %o         八进制整数
# %x         十六进制整数
# %f         浮点数
# %b         带反斜杠转义符的字符串
# %%         百分号


printf "% d 的八进制值是 % o\n" 30 30


# 让我们看看如何使用 % b 说明符来正确解释反斜杠转义字符。
printf "带反斜杠的字符串: % s\n" "Hello\nWorld!"
# 您看到的是％s，这没有什么区别。但是使用％b 可以正确解释新的换行符：
printf "字符串与反斜杠: % b\n" "Hello\nWorld!"

# 使用％c 时，它一次只能读取一个字符。
printf "Character: %c\n" a
printf "Character: %c\n" a b InteractInstall.sh
printf "Character: %c\n" abc


# 您可以在％d 中使用％和 d 之间的空格来显示带前导空格的正整数。当您有一列正数和负数时，这会有所帮助。看看哪个看起来更 “漂亮”：
printf "%d \n%d \n%d \n" 70 -70 70
printf "% d \n%d \n% d \n" 70 -70 70

# 宽度修饰符是一个整数，它指定参数的最小字段宽度。默认情况下，它是右对齐的：
printf "%10s| %5d\n" 12 月 25
# 您可以通过添加 - 标志使其左对齐：
printf "%-10s| %-5d\n" 12 月 25


#您可以使用精度修饰符 (.) 点来来指定要用 % d， % u， % o， % x 显示的最小数字数目。它将在值的左侧添加零填充。
printf "Roll Number: %.5d\n" 628

#　如果对字符串使用精度修饰符，则它指定字符串的最大长度。如果字符串较长，则会在显示中被截断。
printf "Name: %.5s\n" LinuxMi

# 您可以结合使用宽度和精度修饰符：
printf "Name: %.5s\n" LinuxMi
printf "Name: %10.5s\n" LinuxMi


linuxmi=--------------------
linuxmi=$linuxmi$linuxmi
rows="%-16s| %.7d| %3d| %c\n"
TableWidth=38

printf "%-15s| %-7s| %.3s| %s\n" Linux ID Order Sorting
printf "%.${TableWidth}s\n" "$linuxmi"
printf "$rows" "Ubuntu" 100 99 U
printf "$rows" "CentOS" 101 77 C
printf "$rows" "openSUSE" 102 88 O
printf "$rows" "Red Hat" 103 66 R

echo -e "\n ${WHITE_BLUE}------------------------19. 重定向操作符和 tee 命令将文本写入 Bash 中的文件 -------------------------${COLOR_RESET}\n"
# 使用重定向运算符写入文件
# 在 Bash 中，输出的重定向使您可以捕获命令的输出并将其写入文件。
# 重定向并将输出写入文件的一般格式如下：
# output > filename
# output >> filename
# > 重定向操作符将输出写入给定的文件。如果文件存在，它将被截断为零长度。否则，将创建文件。使用这个操作符时要格外小心，因为你可能会覆盖一个重要的文件。
# >> 重定向操作符将输出追加到指定的文件。如果文件不存在，则创建该文件。
# 您需要对该文件具有写权限。否则，您将收到一个权限被拒绝的错误。
# 这是一个简单的示例，显示了如何将 echo 命令的输出重定向到文件：
cd ~/tmp

echo "welcome to www.linuxmi.com" > linuxmi.txt

# 为了防止覆盖现有文件，请使用 set 内置功能启用 “noclobber” 选项：
set -o “noclobber”

echo "welcome to www.linuxmi.com" > linuxmi.txt

# >| 操作符允许你覆盖 Bash 的 "noclobber" 选项:
echo "welcome to www.linuxmi.com" >| linuxmi.txt


# >> 操作符将输出追加到文件的末尾，而不是覆盖文件:
echo "welcome to www.linuxmi.com" >> linuxmi.txt

# 使用 printf 命令创建一个复杂的输出:
printf "Hello, I'm %s.\n" $USER > Linuxmi.com.txt
# 如果要将多个行写入文件，请参考 Here document（Heredoc）重定向。
# 例如，您可以将内容传递给 cat 命令并将其写入文件：
cat << EOF > linuxmi.com.txt
当前的工作目录是: $PWD
您以以下身份登录 $(whoami)
EOF
# 要附加这些行，在文件名之前用 >> 修改 >:
cat << EOF >> linuxmi.txt
当前的工作目录是: $PWD
您以以下身份登录 $(whoami)
EOF
# 您可以将任何命令的输出写入文件：
date +"Year: %Y, Month: %m, Day: %d" > xxvi.txt
# date 命令的输出将被写入文件。


# 使用 tee 命令写入文件
# tee 命令从标准输入读取数据，并同时向标准输出和一个或多个文件写入数据。
echo "welcome to www.linuxmi.com" | tee linuxmi.txt
# 该 tee 命令的默认行为是覆盖指定文件，与 > 操作员相同。要将输出附加到文件，请使用 - a（--append）选项调用命令：
echo "welcome to www.linuxmi.com" | tee -a linuxmi.com.txt
# 如果您不希望 tee 写入标准输出，则可以将其重定向到 /dev/null：
echo "welcome to www.linuxmi.com" | tee www.linuxmi.com.txt >/dev/null
# 要将文本写到多个文件中，请指定文件作为 tee 命令的参数：
echo "welcome to www.linuxmi.com" | tee file_1.txt file_2.txt file_3.txt
# 该 tee 命令的另一个优点是，您可以将其与 sudo 其他用户拥有的文件结合使用并写入其中。要将文本追加到您没有写许可权的文件中，请 sudo 在之前加上 tee：
echo "welcome to www.linuxmi.com" | sudo tee linuxmi.txt
# echo 命令输出作为输入传递给 tee, tee 将提升 sudo 权限并将文本写入文件。



echo -e "\n ${WHITE_BLUE}------------------------20. 8个 Date 命令使用示例------------------------${COLOR_RESET}\n"

# date命令不加任何命令选项，它显示当前日期和时间，包括星期几，月份，年份，h:m:s格式的时间以及时区，如下所示。
date

#要以UTC（世界标准时间）显示时间，需要加-u选项。
date -u

#可以使用--date选项以字符串格式显示特定日期，这不会影响系统的日期和时间，只是将日期格式转换为字符串：
date --date="5/20/2021 13:14"


#date命令还可以打印相对于当前日期的过去日期和时间。例如查看9天前的日期是多少，请运行命令：
date --date="9 days ago"

# 查看三个月前的日期是多少：
date --date="3 months ago"


# 查看两年前的今天日期是多少：
date --date="2 years ago"



# date命令带有许多选项，面列出了一些可用的格式设置选项。

# %D – 日期显示格式为 月/日/年
# %Y – 年份(例如：2021)
# %m – 月份(01-12)
# %B – 月份的完整名称 (例如 January)
# %b – 月份的短名称 (例如 Jan)
# %d – 月份中的哪一天 (例如 01)
# %j – 一年中的第几天(001-366)
# %u – 一个星期中的第几天 (1-7)
# %A – 星期几的全程(例如 Friday)
# %a – 星期几的短名称 (例如 Fri)
# %H – 小时，24小时制 (00-23)
# %I – 小时，12小时制 (01-12)
# %M – 分钟 (00-59)
# %S – 秒 (00-60)


# 使用date选项的语法非常简单：date "+%option"

# 例如，要以yy/mm/dd格式打印日期，请运行：
date "+%Y/%m/%d"

# date命令还允许设置日期和时间。例如，要将日期和时间设置为2021年6月25日上午11:15，请运行以下命令：
date --set="20210625 11:15"

# 在创建Shell脚本的时候，我们将date命令保存到一个变量中，然后使用该变量创建日志文件，示例如下所示：
LOGFILE=/tmp/logs-$(date +%d-%m-%Y_%T)
echo "##Check Cluster for Failed Resources##"  >> $LOGFILE
crm_mon -1 -rf | grep FAILED  >> $LOGFILE
echo -e "\n\n" >> $LOGFILE
echo "##Check Cluster for Stopped Resources##"  >> $LOGFILE
crm_mon -1 -rf | grep -i STOPPED  >> $LOGFILE
echo -e "\n\n" >> $LOGFILE


# 日期加减
# 秒增减
date +'%Y-%m-%d %H:%M:%S' -d "70 second 2020-10-20 12:00:00"
date +'%Y-%m-%d %H:%M:%S' -d "-70 second 2020-10-20 12:00:00"


# 分钟增减
date +'%Y-%m-%d %H:%M:%S' -d "10 minute 2020-10-20 12:00:00"
date +'%Y-%m-%d %H:%M:%S' -d "-10 minute 2020-10-20 12:00:00"

# 小时增减
date +'%Y-%m-%d %H:%M:%S' -d "1 hour 2020-10-20 12:00:00"
date +'%Y-%m-%d %H:%M:%S' -d "-1 hour 2020-10-20 12:00:00"

# 天增减
date +'%Y-%m-%d %H:%M:%S' -d "3 day 2020-10-20 12:00:00"
date +'%Y-%m-%d %H:%M:%S' -d "-3 day 2020-10-20 12:00:00"

# 周增减
date +'%Y-%m-%d %H:%M:%S' -d "1 week 2020-10-20 12:00:00"
date +'%Y-%m-%d %H:%M:%S' -d "-1 week 2020-10-20 12:00:00"

# 月增减
date +'%Y-%m-%d %H:%M:%S' -d "2 month 2020-10-20 12:00:00"
date +'%Y-%m-%d %H:%M:%S' -d "-2 month 2020-10-20 12:00:00"

# 年增减
date +'%Y-%m-%d %H:%M:%S' -d "1 year 2020-10-20 12:00:00"
date +'%Y-%m-%d %H:%M:%S' -d "-1 year 2020-10-20 12:00:00"

# 年月日时分秒增减
date +'%Y-%m-%d %H:%M:%S' -d "1 year 2 month 1 week 3 hour -10 minute 40 second 2020-10-20 12:00:00"

# 一个月中第几天
date +%Y%m%d
date +%d
date +%d -d "20201013"
# date +%d 命令是计算当前日期( 2020年10月23日 ) 是一个月中的第几天
# date +%d -d "20201013" 命令是计算 2020年10月13日 是一个月中第几天

# 一年中第几周
date +%Y%m%d
date +%V
date +%V -d "20201005"
# 上面例子中, date +%V 命令是计算当前日期是一年中第几周，星期一是一周的第一天，取值范围是 01-53，date +%V -d "20201005" 命令是计算指定日期 ( 20201005 ) 是一年中第几周


# 一周中第几天
date +%Y%m%d
date +%u
date +%u -d "20201004"
# 上面的例子中，date +%u 命令是计算当前日期是一周中第几天，取值范围是 1 - 7，分别表示周一至周日，结果是 5，表示当前这一天是周五， date +%u -d "20201004" 命令是计算指定日期 ( 20201004 ) 是一周中第几天，结果是 7 ，表示 2020年10月4日是周日
date +%Y%m%d
date +%w
date +%w -d "20201004"
# 上面例子中,date +%w 命令是也是计算当前日期是一周中第几天，取值范围是 0 - 6 , 0 代表周日，1 - 6 分别代表周一至周六
# 命令 date +%w -d "20201004" 是计算指定日期 ( 20201004 ) 是一周中第几天，结果是 0，表示2020年10月4日是周日

# 月第一天和月最后一天
date +"%Y-%m-%d"  -d  "-$(($(date +%d -d '2020-10-20') -1 )) days  2020-10-20"
date +"%Y-%m-%d"  -d  "-$(($(date +%d -d '2020-10-20') )) days +1 month  2020-10-20"
# 上面例子中，date +"%Y-%m-%d" -d "-$(($(date +%d -d '2020-10-20') -1 )) days 2020-10-20" 命令是计算日期 2020-10-20 中月份的第一天, 结果是 2020-10-001
# 命令 date +"%Y-%m-%d" -d "-$(($(date +%d -d '2020-10-20') )) days +1 month 2020-10-20" 是计算日期 2020-10-20 中月份的最后一天, 结果是 2020-10-31


# 日期和UTC时间互相转换
# 日期转 UTC 时间
# UTC时间是整数，把日期转成UTC时间，更方便各种计算
date +%s
date +%s -d "2020-10-20 12:00:00"
date +%s -d "2020-10-20 00:00:00"
date +%s -d "2020-10-20"
date +%s -d "2020-10-01"
# 上面例子中，date +%s 命令是把当前时间转成 UTC 时间，date +%s -d "2020-10-20 12:00:00" 命令是把 2020-10-20 12:00:00 转成UTC时间

# UTC时间转日期
date +%s -d "2020-10-20 12:00:00"
date -d "@1603166400"
# 命令 date +%s -d "2020-10-20 12:00:00" 是计算 2020-10-20 12:00:00 的UTC时间，这里主要是为了和后面UTC时间转日期做对比用的
# 命令 date -d "@1603166400" 是计算UTC时间( 1603166400 ) 对应的日期，计算结果是 2020年 10月 20日 星期二 12:00:00 CST 前一条命令的日期参数是一致的

# 日期比较大小
# shell中直接比较日期相当于字符串比较，可以先把日期转成UTC时间再进行比较，下面是一个日期比较的测试脚本 ( t.sh )，执行时需要传入两个待比较的日期
date1=$(date +%s -d "$1")
date2=$(date +%s -d "$2")

if [[ ${date1} -lt ${date2} ]]; then
	echo " $1  <  $2 "
elif [[ ${date1} -eq ${date2} ]]; then
	echo " $1  =  $2 "
else
	echo " $1  >  $2 "
fi

# 执行测试脚本，具体结果如下：
# [root@localhost shell_test]# ./t.sh "20201020" "20201020"
#  20201020  =  20201020
# [root@localhost shell_test]# ./t.sh "20201020" "20201021"
#  20201020  <  20201021
# [root@localhost shell_test]# ./t.sh "20201020" "20201019"
#  20201020  >  20201019
#  [root@localhost shell_test]#
#
# [root@localhost shell_test]# ./t.sh "2020-10-20 00:00:01" "2020-10-20 00:00:00"
#  2020-10-20 00:00:01  >  2020-10-20 00:00:00
# [root@localhost shell_test]# ./t.sh "2020-10-20 00:00:01" "2020-10-20 00:00:01"
#  2020-10-20 00:00:01  =  2020-10-20 00:00:01
# [root@localhost shell_test]# ./t.sh "2020-10-20 00:00:01" "2020-10-20 00:00:10"
#  2020-10-20 00:00:01  <  2020-10-20 00:00:10
# [root@localhost shell_test]#
# 从结果可以看出, t.sh 脚本传入日期参数既可以只有年月日又可以年月日时分秒都有，而且日期的格式既可以是 20201020 格式，又可以是 2020-10-20 00:00:00 格式的

# 日期循环遍历
# 在工作中，经常要处理一段时间内的日志，需要遍历日期，然后对每天的日志做处理，下面的测试脚本 ( t.sh ) 是测试日期遍历的, 脚本内容如下：

#开始日期
begindate=$1
#结束日期
enddate=$2

#后一天日期,用于循环
nextdate=${begindate}
#后一天日期的utc时间,用于比较日期
nextutc=$(date +%s -d "${nextdate}")
#结束日期的UTC时间
endutc=$(date +%s -d "${enddate}")


while [ ${nextutc} -le ${endutc} ]
do
	echo "process ${nextdate} log..."
	#计算后一天的日期
	nextdate=$(date -d "${nextdate} 1 day" +%Y%m%d)
	#计算后一天日期的utc时间
	nextutc=$(date +%s -d "${nextdate}")
done

# 执行测试脚本，具体结果如下：

# [root@localhost shell_test]# ./t.sh "20201020" "20201023"
# process 20201020 log...
# process 20201021 log...
# process 20201022 log...
# process 20201023 log...




echo -e "\n ${WHITE_BLUE}------------------------21. netstat命令详解 -----------------------${COLOR_RESET}\n"
#简介: netstat 命令用于显示各种网络相关信息，如网络连接，路由表，接口状态 (Interface Statistics)，masquerade 连接，多播成员 (Multicast Memberships) 等等。
#输出信息含义:
# 从整体上看，netstat的输出结果可以分为两个部分：
# 1. Active Internet connections，称为有源TCP连接，其中"Recv-Q"和"Send-Q"指%0A的是接收队列和发送队列。这些数字一般都应该是0。如果不是则表示软件包正在队列中堆积。这种情况只能在非常少的情况见到。
# 2. Active UNIX domain sockets，称为有源Unix域套接口(和网络套接字一样，但是只能用于本机通信，性能可以提高一倍)。
# Proto显示连接使用的协议,RefCnt表示连接到本套接口上的进程号,Types显示套接口的类型,State显示套接口当前的状态,Path表示连接到套接口的其它进程使用的路径名。
#
# -a (all)显示所有选项，默认不显示LISTEN相关
# -t (tcp)仅显示tcp相关选项
# -u (udp)仅显示udp相关选项
# -n 拒绝显示别名，能显示数字的全部转化成数字。
# -l 仅列出有在 Listen (监听) 的服务状态
# -p 显示建立相关链接的程序名
# -r 显示路由信息，路由表
# -e 显示扩展信息，例如uid等
# -s 按各个协议进行统计
# -c 每隔一个固定时间，执行该netstat命令。


# 提示：LISTEN和LISTENING的状态只有用-a或者-l才能看到
# # 实用命令实例
# 1. 列出所有端口 (包括监听和未监听的)
# 列出所有端口 netstat -a
netstat -a | more

# 列出所有 tcp 端口 netstat -cat
netstat -cat

# 列出所有 udp 端口 netstat -au
netstat -au

# 2. 列出所有处于监听状态的 Sockets
# 只显示监听端口 netstat -l
netstat -l


# 只列出所有监听 tcp 端口 netstat -lt
netstat -lt

# 只列出所有监听 udp 端口 netstat -Cluster
netstat -lu

# 只列出所有监听 UNIX 端口 netstat -lx
netstat -lx

# 3. 显示每个协议的统计信息
# 显示所有端口的统计信息 netstat -s
netstat -s


# 显示 TCP 或 UDP 端口的统计信息 netstat -st 或 -sudo
netstat -st
netstat -su


# 4. 在 netstat 输出中显示 PID 和进程名称 netstat -p
# netstat -p 与其它参数一起使用就可以添加 “PID/进程名称” 到 netstat 输出中，这样 debugging 的时候可以很方便的发现特定端口运行的程序。
netstat -pt

# 5. 在 netstat 输出中不显示主机，端口和用户名 (host, port or user)
# 当你不想让主机，端口和用户名显示，使用 netstat -n。将会使用数字代替那些名称。
netstat -an


# 如果只是不想让这三个名称中的一个被显示，使用以下命令
netsat -a --numeric-ports
netsat -a --numeric-hosts
netsat -a --numeric-users


# 6. 持续输出 netstat 信息
# netstat 将每隔一秒输出网络信息。
netstat -c

# 7. 显示系统不支持的地址族 (Address Families)
netstat --verbose

#8. 显示核心路由信息 netstat -r
netstat -r

# 注意： 使用 netstat -rn 显示数字格式，不查询主机名称。


# 9. 找出程序运行的端口
# 并不是所有的进程都能找到，没有权限的会不显示，使用 root 权限查看所有的信息。
netstat -ap | grep ssh



# 找出运行在指定端口的进程
netstat -an | grep ':80'

# 10. 显示网络接口列表
netstat -i

# 显示详细信息，像是 ifconfig 使用 netstat -ie:
netstat -ie


# 11. IP和TCP分析
# 查看连接某服务端口最多的的IP地址
netstat -nat | grep "192.168.1.15:22" |awk '{print $5}'|awk -F: '{print $1}'|sort|uniq -c|sort -nr|head -20


# TCP各种状态列表
netstat -nat |awk '{print $6}'


#先把状态全都取出来,然后使用uniq -c统计，之后再进行排序。
netstat -nat |awk '{print $6}'|sort|uniq -c

#最后的命令如下:
netstat -nat |awk '{print $6}'|sort|uniq -c|sort -rn


# 分析access.log获得访问前10位的ip地址
awk '{print $1}' access.log |sort|uniq -c|sort -nr|head -10



echo -e "\n ${WHITE_BLUE}------------------------22.  脚本内启动其他脚本 ----------------------${COLOR_RESET}\n"




cat << EOF

方式1： 如果脚本有执行权限的话，.path/to/foo.sh。如果没有，bash path/to/foo.sh。
./script.sh
执行shell脚本时是在当前shell（称为父shell）开启一个子shell环境，此shell脚本就在这个子shell环境中执行。shell脚本执行完后子shell环境随即关闭，然后又回到父shell中.子进程中的各项变量在子进程结束后不会影响到父进程。如下，执行完该脚本后，当前shell进行并不会存在KKK这个变量.

fork 是最普通的, 就是直接在脚本里面用 path/to/foo.sh 来调用
foo.sh 这个脚本，比如如果是 foo.sh 在当前目录下，就是 ./foo.sh。运行的时候 terminal 会新开一个子 Shell 执行脚本 foo.sh，子 Shell 执行的时候, 父 Shell 还在。子 Shell 执行完毕后返回父 Shell。 子 Shell 从父 Shell 继承环境变量，但是子 Shell 中的环境变量不会带回父 Shell。

新开一个子 Shell 执行，子 Shell 可以从父 Shell 继承环境变量，但是子 Shell 中的环境变量不会带回给父 Shell。

方式二：和方式一相同
sh script.sh 或 bash script.sh



方式三：
source script.sh
执行shell脚本时是在当前shell中执行的，脚本中的各项变量在脚本结束后仍然存在。比如上面的脚本，在执行source script.sh后，当前shell中会存在KKK=123这个变量。

与 fork 的区别是不新开一个子 Shell 来执行被调用的脚本，而是在同一个 Shell 中执行. 所以被调用的脚本中声明的变量和环境变量, 都可以在主脚本中进行获取和使用，相当于合并两个脚本在执行。

在同一个 Shell 中执行，在被调用的脚本中声明的变量和环境变量, 都可以在主脚本中进行获取和使用，相当于合并两个脚本在执行。


方式四：
exec script.sh
shell的内建命令,exec将并不启动新的shell，而是用要被执行命令替换当前的shell进程，并且将老进程的环境清理掉，而且exec命令后的其它命令将不再执行。也就是说当命令结束后，会


exec 与 fork 不同，不需要新开一个子 Shell 来执行被调用的脚本. 被调用的脚本与父脚本在同一个 Shell 内执行。但是使用 exec 调用一个新脚本以后, 父脚本中 exec 行之后的内容就不会再执行了。这是 exec 和 source 的区别.

在同一个 Shell 内执行，但是父脚本中 exec 行之后的内容就不会再执行了


见 1.sh  2.sh

EOF



echo -e "11111111111111111111111\n"


exec  ./script.sh


echo -e "333333333333333333333333\n"










































