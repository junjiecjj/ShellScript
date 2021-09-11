#!/bin/bash
#########################################################################
# File Name: grep.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2021年06月28日 星期一 17时43分42秒

# 此程序的功能是：
#########################################################################
#  命令格式
#  grep [option] pattern file
#  常用参数已加粗

#  -A<显示行数>：除了显示符合范本样式的那一列之外，并显示该行之后的内容。

#  -B<显示行数>：除了显示符合样式的那一行之外，并显示该行之前的内容。

#  -C<显示行数>：除了显示符合样式的那一行之外，并显示该行之前后的内容。

#  -c：统计匹配的行数

#  -e：实现多个选项间的逻辑or 关系

#  -E：扩展的正则表达式

#  -f FILE：从FILE获取PATTERN匹配

#  -F：相当于fgrep

#  -i --ignore-case #忽略字符大小写的差别。

#  -n：显示匹配的行号

#  -o：仅显示匹配到的字符串

#  -q：静默模式，不输出任何信息

#  -s：不显示错误信息。

#  -v：显示不被pattern 匹配到的行，相当于[^] 反向匹配

#  -w：匹配 整个单词



# 安装
#  sudo apt-get install grep

# 您可以通过以下命令检查grep版本来验证安装：
# grep --version

# 要显示/etc/passwd文件中包含字符串“bash”的所有行，需要运行以下命令:
grep bash /etc/passwd


#  如果搜索字符串包含空格，则需要用单引号或双引号将其括起:
grep "System message bus" /etc/passwd


#  | 是或者的意思。例如：想查看cpu是否支持虚拟化：
grep 'vmx\|svm' /proc/cpuinfo

#  如果使用扩展正则表达式，则不需要转义|，如下所示:
grep -E 'svm|vmx' /proc/cpuinfo



#  在搜索字符串前面或者后面显示行号
grep  -n -A 2 -B 2 "wang" test.txt

# 计算匹配项的数目
grep -c   "abc" test.txt

#  在匹配字符串周围打印出行号
grep  -n -C 2 "wang" test.txt


# 按给定字符串搜索文件中匹配的行号
grep  -n "chen" test.txt


# 进行精确匹配搜索, -w
grep -n -w  "abc" test.txt


# -o：仅显示匹配到的字符串
grep -o -n "chen"  test.txt
#*************************************  如何使用Grep命令查找多个字符串  ******************************************************
#  使用 grep 命令基本正则表达式搜索多个匹配模式的语法如下：
# grep 'pattern1\|pattern2' filename
# 搜索某用户日志错误文件中出现的所有 fatal、error 和 critical 字符串。语法如下：
grep 'fatal\|error\|critical' /var/log/nginx/error.log
# 还需要注意的是，如果要搜索的字符串包含空格，需要用双引号将其括起来。

# 检查操作系统是否开启虚拟化功能，使用 Basic 基本模式：
grep 'vmx\|svm' /proc/cpuinfo

# 使用扩展模式就不需要添加\转义符了，扩展模式使用方式：
grep -E 'vmx|svm' /proc/cpuinfo
egrep 'vmx|svm' /proc/cpuinfo



# 下面是使用扩展正则表达式的同一个示例，它不需要转义字符:
# grep -E 'pattern1|pattern2' file
grep -E 'fatal|error|critical' /var/log/nginx/error.log


#  默认情况下，grep 命令是区分大小写的。要在搜索时忽略大小写，请调用 grep 加 -i （或 --ignore-case ）选项，示例如下：
grep -i -E 'fatal|error|critical' /var/log/nginx/error.log

#  当你只想搜索某个单词时，比如你想搜索的是单词 error ，grep 命令会输出所有包含 error 字符串的行，即它除了会输出包含 error 单词的行，还会输出包含 errorless 或 antiterrorists 等非 error 单词的行，这样是极不方便的。
#   因此要仅返回指定字符串是整词的行，或者是由非单词字符括起来的行，可以使用 grep 加 -w （或 --word-regexp ）选项：
grep -w -E 'fatal|error|critical' /var/log/nginx/error.log
#  值得注意的是，单词字符包括有字母、数字字符（比如 a-z、a-Z 和 0-9 ）以及下划线（ _ ），所有其他字符都被视为非单词字符。

# grep 支持三种正则表达式语法：Basic、Extended 和 Perl 正则表达式。当没有指定正则表达式类型时，grep 将搜索模式解释为 Basic 基本正则表达式。
# 使用多条件搜索模式时，请使用|管道符。使用 grep 的基本正则表达式搜索多个条件，语法如下：
# grep 'pattern1\|pattern2' file

#默认情况 grep 区分大小写，如果需要忽略大小写，可以添加-i参数：
grep -E -i 'VMX|SVM' /proc/cpuinfo
egrep -i 'VMX|SVM' /proc/cpuinfo

#*************************************  如何使用Grep的排出功能  ******************************************************
# 要仅显示与搜索模式不匹配的行，请使用-v选项。例如，显示不包含nologin的行，使用下面命令：
grep -wv nologin /etc/passwd


# -w选项告诉 grep 仅返回 - w 选项后面包含单词的行。
# 默认情况下 grep 区分大小写。这意味着大写和小写字符被视为不同的。若要在搜索时忽略大小写，请使用-i 选项调用 grep。
# 如果搜索字符串中包含空格，则需要将内容放在单引号或者双引号内。
# 若要排除两个或多个搜索条件，请使用-e选项，可根据需要多次使用-e选项：
grep -wv -e nologin -e bash /etc/passwd

# 排除多个搜索条件的另一个方式是使用运算符 |，以下示例打印不包含字符串nologin和bash的行：
grep -wv 'nologin\|bash' /etc/passwd

# 还可以使用扩展正则表达式，使用选项 -E参数后，运算符|就不需要被转义了，如下图：
grep -Ewv 'nologin|bash' /etc/passwd

# 下面一个实例，是排除/etc/ssh/sshd_config配置文件中的以#和 空格 开头的行：
cat /etc/ssh/sshd_config |grep -Ev '(^#|^$)'

# 下面的实例，要打印出系统上所有正在运行的进程，除了以 “root” 用户身份运行的进程：
ps -ef|grep -wv root



#*************************************  如何使用Grep的排出目录或文件  ******************************************************

# 要从 grep 搜索中排除目录，请使用--exclude-dir选项。排除目录的路径是相对于后面指定的搜索目录。
# 下面实例，显示如何在 /etc 目录中的所有文件中搜索单词keys，不包括 /etc/pki 目录：
grep -Rw --exclude-dir=pki keys /etc/

# 要排除多个目录，请将排除的目录括在大括号中，并使用逗号分隔，不要有空格。
# 例如，要在系统中查找包含字符串 gnu 的文件，不包括 proc、boot 和 sys 目录，需要运行下面命令：
grep -r --exclude-dir={proc,boot,sys} gnu /

# 下面实例，使用--exclude选项排除多个文件，我们在当前工作目录中搜索字符串 linuxprobe，不包括以 .png 和 .jpg 结尾的文件：
grep -rl --exclude=*.{png,jpg} linuxprobe *


########################################  Shell 脚本中的 exit 状态解释   #######################################################
# 命令的返回值是其退出状态，退出状态用于检查命令执行的结果（成功 / 失败）。如果退出状态为 0，则命令执行成功。如果命令失败，则退出状态为非零。
# 下面表格中是返回值对应着退出状态的解释：
#
# 返回值       退出状态
# 0            成功
# 非 0          状态失败
# 2             用法不正确
# 126             不是可执行文件
# 127           没有找到指令

# shell 中的变量名$?是一个特殊的内置变量，可以获取最后一次执行命令的退出状态
# 在执行 shell 函数后，$?返回函数中最后一次执行命令的退出状态。
echo -e "Successful execution"
echo -e "====================="
echo "hello world"
# 退出状态为0，因为命令执行是成功的。
echo "Exit status" $?
echo .
echo -e "Incorrect usage"
echo -e "====================="
ls --option
# 使用了错误的用法，所以退出状态为2。
echo "Exit status" $?
echo .
echo -e "Command Not found"
echo -e "====================="
bashscript
# 退出状态为127，因为该脚本或者命令不存在。
echo "Exit status" $?
echo .
echo -e "Command is not an executable"
echo -e "============================="
touch execution.sh
ls -l execution.sh
./execution.sh
# 退出状态为126，因为该文件没有执行权限。
echo "Exit status" $?
echo .
echo -e "Custom status"
echo -e "====================="
function test1(){
    if [ ! -x "./execution.sh"  ]; then
        echo "\"./execution.sh\" no execute permission!!"
        return 66
    fi
}
test1
# 退出状态为66，函数test1中判断文件是否不存在，不存在就返回echo语句，并定义了返回值。
echo "Exit status" $?



#************************** 一般正则表达式 ****************************************************
# 通过 grep 命令，可以指定带有 start 和 end 关键字的正则表达式。输出将是包含指定的起始和结束关键字之间的整个表达式的句子。此功能非常强大，因为您无需在搜索命令中编写整个表达式。句法：
#$ grep “startingKeyword.*endingKeyword” filename
grep -n "chen" test.txt

#  ^符号匹配行首的空字符串。在下面的示例中，字符串“root”只有在行首出现时才匹配。
grep '^root' /etc/passwd


#  $要查找以字符串“bash”结尾的行，可以使用以下命令:
grep 'bash$' /etc/passwd

#  您还可以使用两个锚来构造正则表达式。例如，查看配置文件，不显示空行，请运行以下命令:
grep -v '^$' /etc/samba/smb.conf
#   -v 反转匹配的意义，来选择不匹配的行。

#  [ ]匹配其中的某一个字符
grep -n 't[ae]st' test.txt
#[] 内可以用范围表示，比如 [a-z] 表示小写字母，[0-9] 表示 0~9 的数字，[A-Z] 则是大写字母。[a-zA-Z0-9] 表示所有数字与英文字符。

grep -n '[0-9]' test.tx
#搜索包含数字的行


#  [^]    匹配不在指定范围内的字符, 可以用 ^ 符号做 [] 内的前缀，表示除 [] 内的字符之外的字符
#  '[^g]oo'  搜索oo前没有g的字符串所在的行
#  '[^A-RT-Z]rep' 匹配不包含A-R和T-Z的一个字母开头，紧跟rep的行。


#  $    锚定行的结束
#   'grep$'  匹配所有以 grep 结尾的行
#   那么‘^$’  表示空行，只有行首和行尾
grep -n '^[a-z]' test.txt #搜索以小写字母开头的行
grep -n '^[^a-zA-Z]'  test.txt #搜索开头不是英文字母的行
grep -n '\.$' test.txt  #需用\转义，搜索末尾是.的行


# 注意在 MS 的系统下生成的文本文件，换行会加上一个 ^M 字符。所以最后的字符会是隐藏的 ^M , 在处理 Windows 文本时要注意！
# 可以用 cat dos_file | tr -d '/r' > unix_file 来删除 ^M 符号。^M==/r


#   .  匹配一个非换行符的字符
#  'gr.p'  匹配gr后接一个任意字符，然后是p。
grep -n "y.n" test.txt

#  * 匹配零个或多个先前的字符
grep -n " *grep" test.txt  #  ' *grep' 匹配一个或多个空格后紧跟grep的行
grep -n ' oo*' test.txt    #  ' oo*', 表示第一个o一定存在，第二个个数不确定，因此至少一个o
grep -n 'goo*g' test.txt      #  搜索g开头和结尾，中间是至少一个o的字符串


#  .*    代表任意字符
grep -n 'g.*g'  test.txt   # 搜索含g开头和结尾的字符串在的行
grep -n '^g.*g$' test.txt  # 搜索g开头和结尾的字符串在的行


#  { }  限定连续重复字符的范围 ,由于 { } 在 SHELL 中有特殊意义，作为正则表达式用的时候要用 / 转义一下。

#  x\{m\}  ex.txt 重复字符x，m次
grep -n 'o\{3\}' test.txt


#  x\{m,n\} ex.txt 重复字符x，m-n次。2,5 表示2~5个
grep -n 'o\{3,5\}' test.txt


#   '[^a-z\.!^ -]' 表示没有小写字母，没有. 没有!, 无空格，没有-的串，[]里有空格

#  \(..\)   # 标记匹配字符
#  '\(love\)'，love被标记为1


#   \<   锚定单词的开始
grep -n  '\<grep'   test.txt


#   \>  # 锚定单词的结束
#   'example\>' 匹配包含以example结尾的单词的行
grep -n  'example\>'   test.txt


#   '0\{5\}'  匹配包含5个o的行
grep -n  'o\{5\}'   test.txt

#   \w    匹配文字和数字字符，也就是 [A-Z，a-z，0-9]
#   'G\w*g' 匹配以G后跟零个或多个文字或数字字符，然后是g
grep -n  'G\w*g'   test.txt

#  \W   \w 的反置形式，匹配一个或多个非单词字符，如点号、句号等。
grep -n  'G\W*g'   test.txt

#  \b   单词锁定符,
#  '\bgrep\b'  只匹配grep
grep -n  '\bgrep\b'   test.txt


#  [:alnum:] 或 [0-9a-zA-Z]
grep [[:alnum:]] test.txt

#  [:alpha:] 或 [a-zA-Z]
grep [[:alpha:]] test.txt

#  [:upper:] 或 [A-Z]
grep [[:upper:]] test.txt

# [:lower:] 或 [a-z]
grep [[:lower:]] test.txt

#  [:blank:] 空白字符（空格和制表符）
grep [[:blank:]] test.txt


# [:space:] 水平和垂直的空白字符（比[:blank:]包含的范围广）
grep [[:space:]] test.txt


# [:cntrl:] 不可打印的控制字符（退格、删、警铃…）
grep [<64;48;27M>é[:cntrl:]] test.txt


#  [:digit:] 十进制数字 或[0-9]
grep [[:digit:]] test.txt


#  [:xdigit:]十六进制数字
grep [[:xdigit:]] test.txt


#  [:graph:] 可打印的非空白字符
grep [[:graph:]] test.txt


#  [:print:] 可打印字符
grep [[:print:]] test.txt


#  [:punct:] 标点符号
grep [[:punct:]] test.txt



#  *匹配前面的字符任意次，包含0次，贪婪模式：尽可能长的匹配
grep  -n "goo*g"  test.txt


#  .*任意长度的任意字符，不包括0次
grep  -n "g.*g"  test.txt


#  \?匹配其前面的字符0次或1次
grep  -n "go\?d"  test.txt

#  \+匹配其前面的字符至少1次
grep  -n "go\+d"  test.txt

#  \{n\}匹配其前面的字符n次
grep  -n "go\{3\}d"  test.txt

#  \{m,n\}匹配其前面的字符至少m次，至多n次
grep  -n "go\{3,10\}d"  test.txt

#  \{,n\}匹配其前面的字符至多n次
grep  -n "go\{,10\}d"  test.txt

#  \{n,\}匹配其前面的字符至少n次
grep  -n "go\{3\}d"  test.txt

#  ^行首锚定，用于模式的最左侧



#  $行尾锚定，用于模式的最右侧

#  ^PATTERN$用于模式的匹配整行

#  ^$  一整行都是空行
grep  -n "^$"  test.txt



#  ^[[:space:]].*$  含有空白的行
grep  -n "^[[:space:]].*$"  test.txt

#  \<或\b词首锚定，用于模式的最左侧


#  \>或\b词尾锚定，用于模式的最右侧


#  \<PATTERN\>用于模式的匹配整行


ps -ef|grep svn                         #查找指定进程
ps -ef|grep svn -c                      #查找指定进程个数
ps -ef|grep -c svn                      #查找指定进程个数
cat test.txt | grep -f test2.txt        #从文件中读取关键词进行搜索
cat test.txt | grep -nf test2.txt       #从文件中读取关键词进行搜索 且显示行号
grep 'linux' test.txt                   #从文件中查找关键词
grep 'linux' test.txt test2.txt         #从多个文件中查找关键词



cat test.txt |grep ^u                   #找出已u开头的行内容
cat test.txt |grep ^[^u]                #输出非u开头的行内容
cat test.txt |grep hat$                 #输出以hat结尾的行内容
cat test.txt |grep -E "ed|at"           #显示包含ed或者at字符的内容行
grep '[a-z]\{7\}' *.txt                 #显示以.txt 结尾的文件中的所有包含每个字符串至少有7个连续小写字符的字符串的行


#************************* 扩展的正则表达式*****************************************
#  (1)字符匹配
#  .  ：任意的单个字符
#  []  ：指定范围的字符
#  [^] ：匹配不在指定范围内的字符
#  *  ：匹配前面的字符任意次
#  ？：0次或者1次
#  +：1次或者多次
#  {m}:匹配m次
#  {m,n}：至少m至多n次

#  (2)位置锚定
#  ^:行首
#  $:行尾
#  \<，\b：行首
#  \>, \b：行尾


###############################  鸟哥的linux私房菜 ###############################


# 搜索特定字符串
grep -n 'the' regular_express.txt


# 搜索特定字符串-反向选择
grep -nv 'the' regular_express.txt


# 利用中括号[]来搜索集合字符
grep -n 't[ae]st' regular_express.txt

# 搜索所有含有oo的行
grep -n 'oo' regular_express.txt


# 不想oo前面有g
grep -n '[^g]oo' regular_express.txt


# 不想oo前面有小写字母
grep -n '[^a-z]oo' regular_express.txt
grep -n '[^[:lower:]]oo' regular_express.txt



# 取有数字的行
grep -n '[0-9]' regular_express.txt
grep -n '[[:digit:]]' regular_express.txt


# 想the只出现在行首
grep -n '^the' regular_express.txt


# 列出开头是小写字符的行
grep -n '^[a-z]' regular_express.txt
grep -n '^[[:lower:]]' regular_express.txt

# 不想英文字母开头
grep -n '^[^a-zA-Z]' regular_express.txt

# ^在[]内是指“反向选择”，在[]外是指定位在行首的意思



# 找出行位结束符为小数点的那些行
grep -n '\.$' regular_express.txt




# 找出空白行
grep -n '^$' regular_express.txt

# 去除空白行和以#开头的行
grep -V '^$' /etc/rsyslog.conf | grep -v '^#'


# # bash 中的字符和正则表达式中的字符有区别，下面总结一下bash中的通配符和特殊字符
# * 代表0到无穷多个任意字符
# ？ 代表至少有一个字符
# [] 代表一定有一个在括号内的字符，如[abcd]代表一定有一个在括号内的字符，可能是a,b,c,sed
# [-] 若有减号在中括号内，代表在编码顺序内的所有字符，例如[0-9]代表0-9直接的所有数字，因为数字的语系编码是连续的
# [^] 若中括号内的第一个字符指数符号(^)，那表示反向选择，例如[^abc]代表一定有一个字符，只要不是a,b,c就行
# \ 转移字符：将特殊字符或者通配符还原成一般字符
# | 管道，分割两个管道命令的界定
# ; 连续指令下达分隔符
# '' 单引号，不具有变量置换能力，($变为纯文本)
# ""  具有变量置换功能，($)可保留相关功能
# `` 两个`中间为可以先执行的指令，等价于$()
# () 在中间为子shell的起始与结束
# {} 在中间为命令区块的组合


# 在bash中，通配符*可以用来代表任意(0个或多个)字符，但是在正则表达式并不是通配符，
# 正则表达式中.则代表绝对有一个任意字符的意思，这两个符号在正则表达式的意义如下：
.(小数点)：代表一定有一个任意字符的意思
*(星号)：代表重复前一个字符0到无穷多次的意思。

# 找出g??d的字符串，
grep -n 'g..d' regular_express.txt

# 找出至少有两个o以上的字符串,
grep -n 'ooo*' regular_express.txt

# 找出g开头和g结尾的字符串
grep -n 'g*g' regular_express.txt

# 得到g...g的字符串
grep -n 'g.*g' regular_express.txt

# 找出任意数字的行列
grep -n '[0-9][0-9]*' regular_express.txt

# 找出两个o的字符串
grep -n 'o\{2\}' regular_express.txt


# 找出g后面接2个至5个o
grep -n 'go\{2,5\}' regular_express.txt


# 搜索行首为#找出行位结束符为小数点的那些行
grep -n '^#' regular_express.txt

# 将行位为!的那一行打印出来
grep -n '!$' regular_express.txt

# 搜索eve, eee, e e, eae，但不能是ee，即e与e自己一定有一个字符,空格也是
grep -n 'e.e' regular_express.txt

# 搜索特殊字符'，需要转义
grep -n  \' regular_express.txt


# 列出行首为^的那一行
grep -n  '^\^' regular_express.txt
grep -n  "^\^" regular_express.txt


# 列出行尾为^的那一行
grep -n  "\^$" regular_express.txt
grep -n  '\^$' regular_express.txt

# 找出以^开始的那些行
grep -n '^\^' regular_express.txt
grep -n "^\^" regular_express.txt


# 找出以^结束的那些行
grep -n '\^$' regular_express.txt
grep -n "\^$" regular_express.txt

# 找出含有\开始的那些行
grep -n '\\' regular_express.txt
# 这时不能把'替换为"

# 找出含有$的行
grep -n '\$' regular_express.txt
# 如果用 grep -n "\$" regular_express.txt 则会列出所有行

# 找出含有^的行
grep -n '\^' regular_express.txt
grep -n "\^" regular_express.txt

# 找出含有*的行
grep -n '\*' regular_express.txt
grep -n "\*" regular_express.txt

# z找出含有es,ess,esss的字符
grep -n 'ess*' regular_express.txt

# 搜索含有gl或者gd的那些行
grep -n 'g[ld]' regular_express.txt

# 搜索oog,ood，但不是oot, ^在[]内是反向选择的意思
grep -n 'oo[^t]' regular_express.txt


# 再次，正则表达式中的特殊字符和一般指令中的通配符不一样，例如在通配符中的*代表的是0到无穷多的
# 意思，但是在正则表达式中是重复0次到无穷多次的前一个RE字符的意思。例如
# 在不支持正则表达式的ls命令中，ls -l a* 代表的是列出以a为开头的所有文档,而在正则表达式中
# 关键字的正则表达式。输出将是包含指定的起始和结束关键字之间的整个表达式的句子。此功能非常强大，因为您无需在搜索命令中编写整个表达式。句法：
ls | grep -n '^a.*'


############################## 鸟哥的linux私房菜 结束 #####################################



















