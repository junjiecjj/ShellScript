# 语法
# awk [options] 'program' var=value file…
# awk [options] -f programfile var=value file…
# awk [options] 'BEGIN{ action;…  } pattern{ action;…  } END{ action;…  }' file ...


# 常用命令选项
# -F fs：fs指定输入分隔符，fs可以是字符串或正则表达式，如-F:

# -v var=value：赋值一个用户定义变量，将外部变量传递给awk

# -f scripfile：从脚本文件中读取awk命令

# awk变量
# 变量：内置和自定义变量，每个变量前加 -v 命令选项


echo -e "------------------------------------------------------------------------------\n"
#  https://mp.weixin.qq.com/s?__biz=MjM5NDEwNzc0MQ==&mid=2650947951&idx=2&sn=ed0e3fd1e9c2c9e5d37f0f9149f6dbac&chksm=bd7a395d8a0db04b74106cc6a8ee14304198e8560abb3fec2ac3298b72549792593fefac4405&mpshare=1&scene=24&srcid=0409pP4UY19YCERoOIj49h9s&sharer_sharetime=1617934485396&sharer_shareid=0d5c82ce3c8b7c8f30cc9a686416d4a8&exportkey=AW3nPA2WzetqLMGc4oMQk1I%3D&pass_ticket=iOCM5ieHfwEfQ%2FjU5W1FxGqCevkLnW5GlfznN4%2BZQ%2Bw6Zl6JcaeVcrZ57G0sUWL5&wx_header=0#rd


# 默认情况下，Awk命令用于打印文件的内容。在本例中，没有指定模式，因此操作应用于文件的每一行。
awk '{print}' linuxmi.txt



# 要打印与给定模式匹配的行，让我们打印其中包含单词“linuxmi”的所有行。
awk '/linuxmi/{print}' linuxmi.txt
awk '/linuxmi/'{print} linuxmi.txt

# Awk用于将一行分割成多个字段并打印出内容。让我们打印linuxmi.txt文件中行的第一部分和第二部分。
awk '{print $1,$2}' linuxmi.txt


# 注意$0输出整行。
# NR - 打印行以及行号。
awk '{print NR,$0}' linuxmi.txt


# 也可以用于指定从某个数字打印到另一个数字。让我们显示从第3行到第6行。
awk 'NR==3, NR==6 {print NR,$0}' linuxmi.txt

# NF - 输出每个记录（行）中包含的字段数
awk '{print NF}' linuxmi.txt


# $NF - 输出每个记录（行）中最后的字段
awk '{print  $NF}' linuxmi.txt


# OFS - 输出字段分隔符–用于指定输出值的分隔符。
awk 'OFS="/" {print $1,$4}' linuxmi.txt


#  BEGIN规则应该在任何文本处理之前执行一次，并且在执行其他任何操作之前先执行。
awk 'BEGIN{print sqrt(400)}'


# 添加模式
# 大于的值的输出。例如，在我们的文件中，最后一个字段表示薪水数字，我们只需要在值大于35000时输出
awk '$NF>=35000 {print $1,$4}' linuxmi.txt


echo -e "------------------------------------------------------------------------------\n"
# https://mp.weixin.qq.com/s?__biz=MzIwMjM0NzU1OQ==&mid=2247484174&idx=1&sn=29e58aa7ecc4ece11fb3f99dd445adf5&chksm=96e14646a196cf50a8a486f8c351e78cb745acb1fa7f76a169e488201d83259fc7a4ebef25f7&mpshare=1&scene=24&srcid=0621Svua26xE447GpXzfcDFT&sharer_sharetime=1624267620612&sharer_shareid=0d5c82ce3c8b7c8f30cc9a686416d4a8&exportkey=ARRLibjFrpwjzIfPYijceYQ%3D&pass_ticket=iOCM5ieHfwEfQ%2FjU5W1FxGqCevkLnW5GlfznN4%2BZQ%2Bw6Zl6JcaeVcrZ57G0sUWL5&wx_header=0#rd


# 实例1：点击回车出现hello world
gawk '{print "Hello World!"}' linuxmi.txt

# 实例2：使用数据字段变量
# $0 代表整个文本行；$n 代表文本行中的第n个数据字段。超过列，不显示。
gawk '{print $1}' test1.txt


# 按照冒号分割，显示系统里的账号。
gawk -F : '{print $1}' /etc/passwd

# 实例3：在程序脚本中使用多个命令，使用分号分割
# 赋值第四个字段，然后在打印全行。
echo "My name is Rich" | gawk '{$4="Christine"; print $0}'

# 给第四个元素赋值为空，变相删除
echo "my name is rich"| gawk -F " " '{print $4=null;print $0}'


# 实例4：从文件中读取程序
gawk -F: -f script1.gawk /etc/passwd|head -3

# 定义了一个变量来保存 print 命令中用到的文本字符串。
# 注意，gawk程序在引用变量值时并未像shell脚本一样使用美元符
gawk -F: -f script2.gawk /etc/passwd|head -2

#实例 5：在处理数据前运行脚本：begin
#通常用来打印报告标题，仅在开始处理文件中的文本之前执行一次；

gawk 'BEGIN {print "Hello World!"}'
gawk 'BEGIN {print "The test1 File Contents:"} {print $0}' test1.txt

#实例 6：在处理数据后运行脚本：end
#通常用来打印页脚，仅在文本处理完成之后、命令结束之前执行一次；
gawk 'BEGIN {print "The test1 File Contents:"}{print $0} END {print "End of File"}' test1.txt


# 打印出每个用户的shell环境。
gawk -f script3.gawk /etc/passwd

实例 7：使用变量
#内建变量
#1. 字段和记录分割符变量
#gawk 数据字段和记录变量

#变 量                            描 述
#  FIELDWIDTHS             由空格分隔的一列数字，定义了每个数据字段确切宽度
#  FS                                输入字段分隔符
#  RS                                输入记录分隔符，指定输入时的换行符，原换行符仍有效
#  OFS                              输出字段分隔符
#  ORS                              输出记录分隔符，输出时用指定符号代替换行符
#  ARGC                           当前命令行参数个数
#  ARGIND                       当前文件在 ARGV 中的位置
#  ARGV                            包含命令行参数的数组
#  CONVFMT                    数字的转换格式（参见 printf 语句），默认值为 %.6 g
#  ENVIRON                     当前 shell 环境变量及其值组成的关联数组
#  ERRNO                         当读取或关闭输入文件发生错误时的系统错误号
#  FILENAME                    用作 gawk 输入数据的数据文件的文件名
#  FNR                       当前数据文件中的数据行数,各文件分别计数，行号，后跟一个文件和 NR 一样，跟多个文件，第二个文件行号从 1 开始
#  IGNORECASE               设成非零值时，忽略 gawk 命令中出现的字符串的字符大小写
#  NF                                数据文件中的字段总数，共有多少字段， NF引用最后一列，(NF-1) 引用倒数第 2 列
#  NR                               已处理的输入记录数,行号，后可跟多个文件，第二个文件行号继续从第一个文件最后行号开始
#  OFMT                           数字的输出格式，默认值为 %.6 g
#  RLENGTH                     由 match 函数所匹配的子字符串的长度
#  RSTART                        由 match 函数所匹配的子字符串的起始位置


# 添加行号
awk 'BEGIN{FS=":"}{print NR,$1,$(NF-0)}' /etc/passwd |head -4


# 指定格式输出
awk 'BEGIN{FS=":"} OFS="\t"{print NR,$1,$NF}' /etc/passwd


# 固定宽度输出
gawk 'BEGIN{FIELDWIDTHS="3 5 2 5"}{print $1,$2,$3,$4}' test1.txt
gawk -v FIELDWIDTHS="3 5 2 5" '{print $1,$2,$3,$4}' test1.txt

# 换行拼接
gawk 'BEGIN{FS="\n"; RS=""} {print $1,$4}' test1.txt
gawk -v FS="\n" -v RS="" '{print $1,$4}' test1.txt

# 命令行解析
gawk 'BEGIN{print ARGC,ARGV[1]}' test1.txt

# NF实例 8：数值计算
gawk 'BEGIN{x=4; x= x * 2 + 3; print x}'


# 按列求和以及平均值：
awk '{a+=$1;b+=$2;c+=$3}END{print a/NR,b/NR,c}' test3


# 列求最大值，最小值
awk 'BEGIN{a=0}{if ($1>a) a=$1 }END{print a}' test3
awk 'BEGIN{a=11111}{if ($1<a) a=$1 }END{print a}' test3
# 全文求和：
for i in `cat test3`;do echo $i ;done |awk '{a+=$1}END{print a}'

awk '{a[$1]=a[$1]" "$2}END{for(i in a)print i,a[i]}' test3 |awk '{print $1":",$2";",$3}'

# 实例 9：基于匹配模式过滤出所要的行，然后取出对应的字段。
gawk 'BEGIN{FS=" "} /One/{print $1}' test1.txt


# 匹配操作符（~）：表示第一个字段中以字母t为开头的字段。注意区分大小写。
gawk 'BEGIN{FS=" "} $1 ~ /^t/{print $0}' test1.txt

# 第一个字段不是t打头的记录
gawk 'BEGIN{FS=" "} $1 !~ /^t/{print $0}' test1.txt

# 查询root用户组的所有用户。
gawk -F: '$4 == 0{print $1}' /etc/passwd


#实例 10: 结构化命令：if,while，for 语句。

# 找出新创建的用户名
gawk -F : '{if ($3 >= 500) print $1}' /etc/passwd


#实例 11：内建函数

# 字符串函数：

# asort(s [,d])
# 将数组 s 按数据元素值排序。索引值会被替换成表示新的排序顺序的连续数字。另外，如果指定了 d，则排序后的数组会存储在数组 d 中

# asorti(s [,d])
# 将数组 s 按索引值排序。生成的数组会将索引值作为数据元素值，用连续数字索引来表明排序顺序。另外如果指定了 d，排序后的数组会存储在数组 d 中

# gensub(r, s, h [, t])
# 查找变量 $0 或目标字符串 t（如果提供了的话）来匹配正则表达式 r。如果 h 是一个以 g 或 G 开头的字符串，就用 s 替换掉匹配的文本。如果 h 是一个数字，它表示要替换第 h 处 r 匹配的地方

# gsub(r, s [,t])
# 查找变量 $0 或目标字符串 t（如果提供了的话）来匹配正则表达式 r。如果找到了，就全部替换成字符串 s

# index(s, t）
# 返回字符串 t 在字符串 s 中的索引值，如果没找到的话返回 0

# length([s])
# 返回字符串 s 的长度；如果没有指定的话，返回 $0 的长度

# match(s, r [,a])
# 返回字符串 s 中正则表达式 r 出现位置的索引。如果指定了数组 a，它会存储 s 中匹配正则表达式的那部分

# split(s, a [,r])
# 将 s 用 FS 字符或正则表达式 r（如果指定了的话）分开放到数组 a 中。返回字段的总数

# sprintf(format,variables)
# 用提供的 format 和 variables 返回一个类似于 printf 输出的字符串

# sub(r, s [,t])
# 在变量 $0 或目标字符串 t 中查找正则表达式 r 的匹配。如果找到了，就用字符串 s 替换掉第一处匹配

# substr(s, i [,n])
# 返回 s 中从索引值 i 开始的 n 个字符组成的子字符串。如果未提供 n，则返回 s 剩下的部分

# tolower(s)
# 将 s 中的所有字符转换成小写

#  toupper(s)
# 将 s 中的所有字符转换成大写

# mktime(datespec)
# 将一个按 YYYY MM DD HH MM SS [DST] 格式指定的日期转换成时间戳值

# strftime(format[,timestamp])
# 将当前时间的时间戳或 timestamp（如果提供了的话）转化格式化日期（采用 shell 函数 date () 的格式）

# systime ( ) 返回当前时间的时间戳

# 实例讲解)

# 大小写及长度获取
gawk 'BEGIN{x = "testing"; print toupper(x); print length(x) }'

# 函数简单操作。
gawk '{print toupper($1),tolower($1),length($2),systime(),substr($2,0,2),sub("T","t",$0),substr($5, 1,10),split($0,a) }' test1.txt

# 将数字全部替换为空格||
awk 'BEGIN{info="this is a test2012test!";gsub(/[0-9]+/,"||",info);print info}'

# 字符串分割，存储到数组a中。
echo "12:34:56" | awk '{split($0,a,":");print a[1],a[2],a[3]}'

# 字符长度
echo "123" | awk '{print length}'

# 把abc用def进行替换
echo "abacdefabcdef"|awk '$0 ~ /abc/ {gsub("abc", "def", $0); print $1, $3}'

# 寻找字符传中是否有test 串，如果有的话则ok，否则no found。
awk 'BEGIN{info="this is a test2010test!";print index(info,"test")?"ok":"no found";}'


# 匹配索引位置检索。
awk 'BEGIN{info="this is a test2010test!";print match(info,/[0-9]+/)}'


# 日期转换
gawk 'BEGIN{
date = systime()
day = strftime("%A, %B %d, %Y", date)
print day
}'


echo -e "------------------------------------------------------------------------\n"

# 以下案列在：https://mp.weixin.qq.com/s/TYEqcV1oTV-jsm6kG8HdoQ

# （1）格式

# FS ：输入字段分隔符，默认为空白字符

# OFS ：输出字段分隔符，默认为空白字符

# RS ：输入记录分隔符，指定输入时的换行符，原换行符仍有效

# ORS ：输出记录分隔符，输出时用指定符号代替换行符

# NF ：字段数量，共有多少字段， 图片(NF-1)引用倒数第2列

# NR ：行号，后可跟多个文件，第二个文件行号继续从第一个文件最后行号开始

# FNR ：各文件分别计数, 行号，后跟一个文件和NR一样，跟多个文件，第二个文件行号从1开始

# FILENAME ：当前文件名

# ARGC ：命令行参数的个数

# ARGV ：数组，保存的是命令行所给定的各参数，查看参数

# （2）演示

awk -v FS=':' '{print $1,$2}' awkdemo  #FS指定输入分隔符


awk -v FS=':' -v OFS='---' '{print $1,$2}' awkdemo  #OFS指定输出分隔符


awk -v RS=':' '{print $1,$2}' awkdemo  # RS指定输入时的换行符

awk -v FS=':' -v ORS='---' '{print $1,$2}' awkdemo  #ORS指定输入时的换行符

awk -F: '{print NF}' awkdemo   # NF每行的字段数

awk -F: '{print $(NF-1)}' awkdemo  #显示倒数第2列

awk '{print NR}' awkdemo test1.txt


awk '{print FNR}' awkdemo  test.txt


awk '{print FILENAME}' awkdemo


awk 'BEGIN {print ARGC}' awkdemo  test1.txt

awk 'BEGIN {print ARGV[0]}' awkdemo test1.txt

awk 'BEGIN {print ARGV[1]}' awkdemo test1.txt

awk 'BEGIN {print ARGV[2]}' awkdemo test1.txt

#自定义变量 (区分字符大小写)

#（1）-v var=value

#① 先定义变量，后执行动作 print
awk -v name="along" -F: '{print name":"$0}' awkdemo

# ② 在执行动作 print 后定义变量
awk -F: '{print name":"$0;name="along"}' awkdemo

#（2）在 program 中直接定义
#可以把执行的动作放在脚本中，直接调用脚本 -f
awk -F: -f awk.txt awkdemo


# printf 命令,比 print 更强大,
# (1)格式化输出:
#  printf "FORMAT", item1,item2, ...

# ①  必须指定 FORMAT

# ②  不会自动换行，需要显式给出换行控制符，\n

# ③  FORMAT 中需要分别为后面每个 item 指定格式符

#（2）格式符：与 item 一一对应

# % c:  显示字符的 ASCII 码

# % d, % i:  显示十进制整数

# % e, % E: 显示科学计数法数值

# % f ：显示为浮点数，小数   %5.1f，带整数、小数点、整数共 5 位，小数 1 位，不够用空格补上

# % g, % G ：以科学计数法或浮点形式显示数值

# % s ：显示字符串；例：%5s 最少 5 个字符，不够用空格补上，超过 5 个还继续显示

# % u ：无符号整数

# %%:  显示 % 自身

#（3）修饰符：放在 % c [/d/e/f…] 之间

#  #[.#]：第一个数字控制显示的宽度；第二个# 表示小数点后精度，%5.1f

#  -：左对齐（默认右对齐） %-15s

#  +：显示数值的正负符号 %+d


# 演示
awk -F: '{print $1,$3}' /etc/passwd

#  ---第一列显示小于20的字符串；第2列显示整数并换行
awk -F: '{printf "%20s---%u\n",$1,$3}' /etc/passwd

# ---使用-进行左对齐；第2列显示浮点数
awk -F: '{printf "%-20s---%-10.3f\n",$1,$3}' /etc/passwd

# ---使用printf做表格
awk -F: 'BEGIN{printf "username            userid\n-----------------------------\n"}{printf "%-20s|%-10.3f\n",$1,$3}' /etc/passwd


# 操作符
# 算数操作符
# x+y,x-y,x*y,x/y, x^y, x%y
# -x转化为负数
# +x转化为数值
# 字符串操作符：没有符号的操作符，字符串连接
# 赋值操作符：=，+=，-=，*=，/=,%=, ^=,++,--
# 比较操作符：==，!=, >, >=, <, <=
# 模式匹配符:~,
# 逻辑操作符：与&&，或||， 非！
# 函数调用：functionname(argu1,argu2,...)
# 三目表达式：selector?if-true-ecpression:if-false-expression

# 演示
# （1）模式匹配符
# ---查询以/dev开头的磁盘信息
df -h |awk -F: '$0 ~ /^\/dev/'
# /dev/mapper/cl-root   17G  7.3G  9.7G  43% /
# /dev/sda1           1014M  121M  894M  12% /boot


# ---只显示磁盘使用状况和磁盘名
df -h |awk '$0 ~ /^\/dev/{print $(NF-1)"---"$1}'
# 43%---/dev/mapper/cl-root
# 12%---/dev/sda1

#  ---查找磁盘大于40%的
df -h |awk '$0 ~ /^\/dev/{print $(NF-1)"---"$1}' |awk -F% '$1 > 40'
# 43%---/dev/mapper/cl-root


# （2）逻辑操作符
awk -F: '$3>=0 && $3<=1000 {print $1,$3}' /etc/passwd

awk -F: '$3==0 || $3>=1000 {print $1}' /etc/passwd

awk -F: '!($3==0) {print $1}' /etc/passwd

awk -F: '!($0 ~ /bash$/) {print $1,$3}' /etc/passwd


# （3）条件表达式（三目表达式）
awk -F: '{$3 >= 1000?usertype="common user":usertype="sysadmin user";print usertype,$1,$3}' /etc/passwd

# awk PATTERN 匹配部分
# PATTERN：根据 pattern 条件，过滤匹配的行，再做处理
#（1）如果未指定：空模式，匹配每一行

#（2）/regular expression/ ：仅处理能够模式匹配到的行，正则，需要用 // 括起来

#（3）relational expression：关系表达式，结果为 “真” 才会被处理

#真：结果为非 0 值，非空字符串

#假：结果为空字符串或 0 值

#（4）line ranges：行范围

#startline (起始行),endline (结束行)：/pat1/,/pat2/  不支持直接给出数字，可以有多段，中间可以有间隔

#（5）BEGIN/END 模式

#  BEGIN {}:  仅在开始处理文件中的文本之前执行一次

#  END {} ：仅在文本处理完成之后执行

awk -F: '{print $1}' awkdemo


awk -F: '/along/{print $1}' awkdemo


awk -F: '1{print $1}' awkdemo


awk -F: '0{print $1}' awkdemo

awk -F: '/^h/,/^a/{print $1}' awkdemo

awk -F: 'BEGIN{print "第一列"}{print $1} END{print "结束"}' awkdemo


# awk 有意思的案例
seq 10

#因为i=0，为假，所以不打印
seq 10 |awk 'i=0'

# i=1，为真，所以全部打印
seq 10 |awk 'i=1'

# 只打印奇数行；奇数行i进入时本身为空，被赋为!i，即不为空，所以打印；偶数行i进入时本身不为空，被赋为!i，即为空，所以不打印
seq 10 |awk 'i=!i'

# 解释上一个操作，i在奇偶行的值
seq 10 |awk '{i=!i;print i}'

# 只打印偶数行，是上边打印奇数行的取反
seq 10 |awk '!(i=!i)'


# 只打印偶数行；先对i进行赋值，即不为空，刚好和打印奇数行相反
seq 10 |awk -v i=1 'i=!i'

# awk 高阶用法
# awk 控制语句 —if-else 判断
#（1）语法

#   if(condition){statement;…}[else statement]  双分支
#   if(condition1){statement1}else if(condition2){statement2}else{statement3}  多分支
#（2）使用场景：对 awk 取得的整行或某个字段做条件判断

#（3）演示
awk -F: '{if($3>10 && $3<1000)print $1,$3}' /etc/passwd


awk -F: '{if($NF=="/bin/bash") print $1,$NF}' /etc/passwd

# 输出总列数大于3的行
awk -F: '{if(NF>2) print $0}' awkdemo

第3列>=1000为Common user，反之是root or Sysuser
awk -F: '{if($3>=1000) {printf "Common user: %s\n",$1} else{printf "root or Sysuser: %s\n",$1}}' /etc/passwd


磁盘利用率超过40的设备名和利用率
df -h|awk -F% '/^\/dev/{print $1}'|awk '$NF > 40{print $1,$NF}'


test=100和>90为very good; 90>test>60为good; test<60为no pass
awk 'BEGIN{ test=100;if(test>90){print "very good"}else if(test>60){ print "good" }else{print "no pass"} }'

awk 'BEGIN{ test=80;if(test>90){print "very good"}else if(test>60){ print "good" }else{print "no pass"} }'


awk 'BEGIN{ test=50;if(test>90){print "very good"}else if(test>60){ print "good" }else{print "no pass"} }'



# awk 控制语句 —while 循环
# （1）语法
# while(condition){statement;…}
注：条件 “真”，进入循环；条件 “假”， 退出循环

#（2）使用场景

#对一行内的多个字段逐一类似处理时使用
#对数组中的各元素逐一处理时使用

#（3）演示
# 以along开头的行，以：为分隔，显示每一行的每个单词和其长度
awk -F: '/^along/{i=1;while(i<=NF){print $i,length($i); i++}}' awkdemo


# 以：为分隔，显示每一行的长度大于6的单词和其长度
awk -F: '{i=1;while(i<=NF) {if(length($i)>=6){print $i,length($i)}; i++}}' awkdemo

# 计算1+2+3+...+100=5050
awk 'BEGIN{i=1;sum=0;while(i<=100){sum+=i;i++};print sum}'

# 5.3 awk 控制语句 —do-while 循环

#（1）语法

# do {statement;…}while(condition)
#     意义：无论真假，至少执行一次循环体

#    （2）计算 1+2+3+…+100=5050
awk 'BEGIN{sum=0;i=1;do{sum+=i;i++}while(i<=100);print sum}'

# awk 控制语句 —for 循环

#（1）语法

# for(expr1;expr2;expr3) {statement;…}
#     （2）特殊用法：遍历数组中的元素

#  for(var in array) {for-body}
#（3）演示

# 显示每一行的每个单词和其长度
awk -F: '{for(i=1;i<=NF;i++) {print$i,length($i)}}' awkdemo

# 求男m、女f各自的平均
cat sort.txt

awk '{m[$2]++;score[$2]+=$3}END{for(i in m){printf "%s:%6.2f\n",i,score[i]/m[i]}}' sort.txt


#和 shell 脚本中较相似的控制语句
# switch 语句
#和 shell 中的 case 很像，就不在演示了
# switch(expression) {case VALUE1 or /REGEXP/:statement1; case VALUE2 or /REGEXP2/: statement2;...; default: statementn}

# break 和 continue
# 奇数相加
awk 'BEGIN{sum=0;for(i=1;i<=100;i++){if(i%2==0)continue;sum+=i}print sum}'

#  1+2+...+66
awk 'BEGIN{sum=0;for(i=1;i<=100;i++){if(i==66)break;sum+=i}print sum}'

#  next：提前结束对本行处理而直接进入下一行处理（awk 自身循环）
# 只打印偶数行
awk -F: '{if(NR%2!=0) next; print NR, $1,$3}' /etc/passwd


# awk 数组
# 关联数组：array [index-expression]
#（1）可使用任意字符串；字符串要使用双引号括起来

#（2）如果某数组元素事先不存在，在引用时，awk 会自动创建此元素，并将其值初始化为 “空串”

#（3）若要判断数组中是否存在某元素，要使用 “index in array” 格式进行遍历

#（4）若要遍历数组中的每个元素，要使用 for 循环：for (var in array) {for-body}

# （1）awk 使用数组

cat awkdemo2
#去除重复的行
awk '!arr[$0]++' awkdemo2

# 打印文件内容，和该行重复第几次出现
awk '{!arr[$0]++;print $0,arr[$0]}' awkdemo2

# 分析：把每行作为下标，第一次进来，相当于 print ias… 一样结果为空，打印空，! 取反结果为 1，打印本行，并且 ++ 变为不空，下次进来相同的行就是相同的下标，本来上次的值，！取反为空，不打印，++ 变为不空，所以每次重复进来的行都不打印


# （2）数组遍历
awk 'BEGIN{abc["ceo"]="along";abc["coo"]="mayun";abc["cto"]="mahuateng";for(i in abc){print i,abc[i]}}'

awk 'BEGIN{abc["ceo"]="along";abc["coo"]="mayun";abc["cto"]="mahuateng";for(i in abc){print i,abc[i]}}'

awk '{for(i=1;i<=NF;i++)abc[$i]++}END{for(j in abc)print j,abc[j]}' awkdemo2


# 数值 \ 字符串处理
#（1）数值处理

# rand ()：返回 0 和 1 之间一个随机数，需有个种子 srand ()，没有种子，一直输出 0.237788

# 演示：
awk 'BEGIN{print rand()}'

awk 'BEGIN{srand(); print rand()}'

awk 'BEGIN{srand(); print rand()}'

awk 'BEGIN{srand(); print int(rand()*100%50)+1}'

awk 'BEGIN{srand(); print int(rand()*100%50)+1}'

#（2）字符串处理：

# length ([s]) ：返回指定字符串的长度

# sub (r,s,[t]) ：对 t 字符串进行搜索 r 表示的模式匹配的内容，并将第一个匹配的内容替换为 s

# gsub (r,s,[t]) ：对 t 字符串进行搜索 r 表示的模式匹配的内容，并全部替换为 s 所表示的内容

# split (s,array,[r]) ：以 r 为分隔符，切割字符串 s ，并将切割后的结果保存至 array 所表示的数组中，第一个索引值为 1, 第二个索引值为 2,…

# 演示：

echo "2008:08:08 08:08:08" | awk 'sub(/:/,"-",$1)'

echo "2008:08:08 08:08:08" | awk 'gsub(/:/,"-",$0)'

echo "2008:08:08 08:08:08" | awk '{split($0,i,":")}END{for(n in i){print n,i[n]}}'

# awk 自定义函数

#（1）格式：和 bash 区别：定义函数（）中需加参数，return 返回值不是 $?，是相当于 echo 输出

# function name ( parameter, parameter, ...  ) {
#     statements
#         return expression
# }

#（2）演示
awk -f fun.awk

# awk 中调用 shell 命令
#（1）system 命令
# 空格是 awk 中的字符串连接符，如果 system 中需要使用 awk 中的变量可以使用空格分隔，或者说除了 awk 的变量外其他一律用 "" 引用 起来。
awk BEGIN'{system("hostname") }'


awk 'BEGIN{name="along";system("echo "name)}'  注："echo " echo后有空格

awk 'BEGIN{score=100; system("echo your score is " score) }'


#（2）awk 脚本

# 将 awk 程序写成脚本，直接调用或执行

# （3）向 awk 脚本传递参数
#
# ① 格式：
#
# awkfile var=value var2=value2... Inputfile
# 注意 ：在 BEGIN 过程 中不可用。直到 首行输入完成以后，变量才可用 。可以通过 - v  参数，让 awk 在执行 BEGIN 之前得到变量的值。命令行中每一个指定的变量都需要一个 - v
#
# ② 示例
cat f3.awk
# #!/bin/awk -f
# {if($3 >=min && $3<=max)print $1,$3}
chmod +x f3.awk
./f3.awk -F: min=100 max=200 /etc/passwd


echo -e "-------------------------------------------------------------------------------"
# https://mp.weixin.qq.com/s?__biz=MzAwMzc4MTExOA==&mid=2649800092&idx=1&sn=614713c267bbf58f5223580b1fae8d1d&chksm=8331e50db4466c1b195b97451e8f963ed1a4fa68922891c4a25cbbdf4f625e12523e7a4b9ace&mpshare=1&scene=24&srcid=06217wYkW2vSMJ35sWYWfHL9&sharer_sharetime=1624269986273&sharer_shareid=0d5c82ce3c8b7c8f30cc9a686416d4a8&exportkey=AUehm8JXMXYpOHeBeVq56j4%3D&pass_ticket=iOCM5ieHfwEfQ%2FjU5W1FxGqCevkLnW5GlfznN4%2BZQ%2Bw6Zl6JcaeVcrZ57G0sUWL5&wx_header=0#rd

1、如何使用awk命令打印文件的列？
现在，打印文件的第二列，使用:
awk '{print $2}' student.txt


要打印多个字段，使用命令:
awk '{print $1,$2,$3}' student.txt




如果你不使用逗号“，”，那么输出将没有空格:
awk '{print $1$2$3}' student.txt


2、如何使用正则表达式与awk命令:
为了匹配字符串或任何表达式，我们使用斜杠" // "，例如，如果你想打印正在学习"lishi"的人的名字，那么使用:
awk '/历史/{print $2}' student.txt

输出清楚地表明，只有“张三”和“方咪”正在学习“历史”课程。


3、如何通过“awk”命令使用关系表达式：
为了匹配特定字段的内容，可以使用关系表达式。要将任何字符串或表达式与字段进行匹配，请指示该字段，并使用比较符“〜”与以下命令中显示的模式进行比较：
awk '$3 ~/语/ {print $2}' student.txt


上面的输出显示第2列中的每个字段与第3列中包含“语”的每个字段的对比。
要获得上述命令的相反输出，请使用“! ~”运算符：

awk '$3!~/语/ {print $2}' student.txt




为了进行比较，我们还可以使用大于“>”，小于“ <”和等于“ =”的运算符：
awk '$4>81 {print $2}' student.txt

输出显示了获得81分以上得分的人员的姓名。




4、如何通过awk命令使用范围模式：
范围也可以用于搜索；只需使用逗号“，”来分隔范围，如下面提到的命令所示：
awk '/李四/,/陈明/ {print $3}' student.txt



输出显示第2列中人员的姓名，第4列中标记“ 87到91”的范围。
awk '$4==87,$4==91 {print $2}' student.txt




5、如何使用逻辑运算符组合模式：
使用逻辑运算符（例如OR“ ||”，“ &&&”）可以组合模式进行搜索。使用以下命令
awk '$4>81 && $6>0.4 {print $2}' student.txt




上面的命令将在第四个字段上打印大于81的人名，在第六个字段上打印大于0.4的人名。并且只有两个记录满足条件。
6、awk命令的特殊表达式：
有两个特殊表达式，“ BEGIN”和“ END”：
开始：在处理数据之前执行操作
结束：在处理完数据后执行一项操作

awk 'BEGIN {print "处理已经开始"}; {print $2}; END {print "处理已结束"}' student.txt





7、awk命令的有用的内置变量：
awk命令具有各种有助于数据处理的变量：
变量	说明
NF	它给出了数据中字段的数量
NR	给出当前记录的编号
FILENAME	显示当前正在处理的文件的名称
FS 和 OFS	字段分隔符和输出字段分隔符
RS 和 ORS	分离记录和输出记录分隔符
示例：


awk 'END{print "文件名是 ", FILENAME, "有", NF, "个字段和", NR, "个记录"}' student.txt


8、如何更改记录分隔符：
记录中的默认分隔符通常为空格；如果有逗号“，”或点“。”作为字段分隔符，然后将“ FS”选项与分隔符一起使用。
我们再来看一个文件，其中的数据字段之间用逗号“：”隔开：

awk 'BEGIN {FS=":"}{print $2}' student.txt


由于文件的分隔符是冒号，但是“ awk”命令甚至对此类文件也很有用，因此只需使用“ FS”选项即可。
也可以使用“ -F”：
awk -F ":" '{print $2}' student.txt
默认记录分隔符为“换行符”，并将记录分隔符设置为“：”，请使用：
awk 'BEGIN{RS=":"}{print $1}' linuxmi.txt



9、Awk Actions：
Awk Actions是由“{}”括号括起来的小程序，它有多个用分号“；”分隔的语句。
使用“ awk”命令最常用的语句是“ print”语句。例如，要打印每条记录的文本，请在引号中使用文本字符串：
awk '{print "Linux迷 www.linuxmi.com," $2}'


让我们使用awk执行简单的求和运算：
awk '{sum += $4} END {printf "%d\n", sum}' student.txt






