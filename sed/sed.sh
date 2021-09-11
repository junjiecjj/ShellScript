#!/bin/bash

#  https://mp.weixin.qq.com/s?__biz=MzAxMTkwODIyNA==&mid=2247493774&idx=1&sn=e04ced49c00a50399d4f2e6469a952c0&chksm=9bbb4d61acccc477c62876990e13502ba8e202a1df7c1ff6ce3cd8815c0604c957c99627b378&mpshare=1&scene=24&srcid=0621Obubredxfnruq8caaNxk&sharer_sharetime=1624267602449&sharer_shareid=0d5c82ce3c8b7c8f30cc9a686416d4a8#rd
#二、初识sed的工作原理
# 前提：首先对于一个文本文件来说，它是由至上而下的一行或N行组成。

#1、当用sed命令对文本进行处理的时候，sed先读取对象的文本文件的第一行到模式空间中。

#2、当有内容进入“模式空间”时，sed的编辑命令对模式空间中的内容进行编辑操作（修改，替换，删除，追加，显示等等）

#3、模式空间中的内容编辑处理完成之后，sed把此内容通过标准输出（默认为显示器）打印出来，并删除模式空间中的内容。

#4、第一行处理结束。从新读取第二行的内容进行处理，直到最后一行。


#三、sed命令的基本语法
# sed OPTIONS… [SCRIPT] [INPUTFILE…]

# 常用的选项：

#  -n,–quiet: 不输出模式空间中的内容

#  -i: 直接编辑原文件，默认不对原文件进行操作

#  -e: 可以使用多个命令（脚本）进行操作

#  -f /path/from/sed_script: 从指定的文本中读取处理脚本

#  -r: 使用扩展正则表达式

#四、模式空间中的编辑操作

#1、地址定界：

#1）#：#为数字，指定要进行处理操作的行

#2）$：表示最后一行，多个文件进行操作的时候，为最后一个文件的最后一行

#3）/regexp/：表示能够被regexp匹配到的行

# regexp及基于正则表达式的匹配：关于正则表达式的请参考grep的基本用法详解中的【三、了解正则表达式】

#4）/regexp/I：匹配是忽略大小写

#5）\%regexp%: 任何能够被regexp匹配到的行，换用%（用其他字符也可以，如：#）为边界符号

#6）addr1,addr2：指定范围内的所有的行（范围选定）

#常用的以下几种表示方法：

#a）0，/regexp/：从起始行开始到第一次能够被regexp匹配到的行

#b）/regexp/,/regexp/：被模式匹配到的行内的所有的行

#c）#,#：#为数字，给定具体的行范围

#d）#,+N：#为数字，从#开始的行开始，向下N行的所有的行

#7）first~step：指定起始的位置及步长，例如：1~2表示1,3,5…

#2、常用的编辑命令：

#1）d：删除匹配到的行

#2）p：打印模式空间中的内容

#注意：sed默认情况下是把“模式空间”中的内容全部进行显示，p的意义在于把匹配到的行进行显示。

#所以其显示的结果是“默认的显示内容+p要显示的内容”。

#因此通常与-n选项一起使用，表示只显示匹配到的行。

#3）a \text：append,表示在匹配到的行之后追加内容

#4）i \text：insert,表示在匹配到的行之前追加内容

#5）c \text：change,表示吧匹配到的行和给定的文本进行交换

#6）s/regexp/replacement/flages：查找替换,把text替换为regexp匹配到的内容（其中/可以用其他字符代替，例如@）

#可能会用到的特殊replacemen（通常replacement为固定的字符窜）：

#\L：转换后面的内容第一个字母为小写字母

#\l：后面的内容全部转换成小写，直到遇到\E为止

#\U：转换后面的内容第一个字母为大写字母

#\u：后面的内容全部转换成大写，直到遇到\E为止

#\E：当以\L或\U开始的时候，\E意味着停止字符的转换

#详情请参考：sed的官方文档

#如果是replacement为变量时，用'$VAR'引用即可

#常用的flages：

#  g：全局替换，默认只替换第一个

#  i： 不区分大小写

#  p：如果成功替换则打印

#7）w /path/to/somefile：将匹配到的文件另存到指定的文件中

#8）r /path/from/somefile：将读取指定的文件内容到匹配的行处（如果指定文件为多行时，追加到匹配行之后）

#五、知识点练习

#1、显示文件中的偶数行：

#1）用first~step的方式来实现，把奇数行删除，自然显示的事偶数行
sed "1~2d" test.txt


#2）不输出默认的显示内容，用p指定显示偶数行
sed -n "2~2p" test.txt

#2、在含有“ftp”这个行的前面加上“#This is a command”
sed   '/junjie/i # This is a command' etcpasswd.txt

#4、把/etc/man.config文件所有不以#开头的行保存到/tmp/sed/man.txt的目录中
#其中多个脚本用-e来分别执行，其实用；也可以实现多个脚本的连接。例如：
sed -n -e '/^#/d; w ./etcpass.txt' etcpasswd.txt


#六、sed的知识扩展

#在sed的工作原理图中我们了解到，sed不仅存在模式空间，也存在一个保持空间（hold space)。顾名思义，保存空间是一段sed独有的内存空间片段，可以暂时存放一些数据。

#其中与“保持空间”相关的编辑命令有：

#  h：把模式空间中的内容覆盖到保存空间中的内容

#  H：把模式空间中的内容追加到保存空间中（加在原有内容之后）

#  g：把保持空间中的内容覆盖到模式空间中的内容

#  G：把保持空间中的内容追加到模式空间中（加在原有内容之后）

#  x：把模式空间中的内容和保持空间中的内容进行交换

#  d：删除模式空间中的内容

#  D：如果模式空间中的内容为多行时，删除模式空间中的第一行

#  n：读取匹配到的行的下一行到模式空间中（覆盖原内容）

#  N：读取匹配到的行的下一行到模式空间中（追加在原内容之后）

#  例如：显示偶数行的时候就可以这样实现：sed -n 'n;p' FILE

# 练习2、

#前提：/etc/services文件是记录了服务与端口号之间的映射关系

#1) 在此文件中选出21，22，25，53，80，443，8080的行并予以显示

# grep -E可以支持使用扩展正则表达式，所以可以使用|（或者）
cat /etc/services | grep -E  "[[:space:]](21|22|25|53|80|443|8080)/tcp"

# 2）要求把右边有#注释的行的注释信息追加到此行的上一行
cat /etc/services | grep -E  "[[:space:]](21|22|25|53|80|443|8080)/tcp" | sed -f command1.sed


# 3）删除右侧的注释行，并保留以#行开头的注释行,在script中追加s/[[:space:]]\+#.*//

# 4）服务与服务之间加入空白行,sed '/^#/!G;$d' 在非#开头的行之加入空白行，之后最后一行会多出一个空白行，用sed '$d'删除最后一行即可。
cat /etc/services | grep -E  "[[:space:]](21|22|25|53|80|443|8080)/tcp" | sed -f command1.sed | sed '/^#/!G;' | sed '$d'







# https://mp.weixin.qq.com/s/u33ExjS_TOTE6qBVrZO_DA
# 实例 1：流式替换
echo "This is a test" | sed 's/test/big test/'


# 实例 2：不修改源文件情况下的替换
cat data.txt
sed 's/dog/cat/' data.txt


#实例 3：: 在命令行使用多个编辑器命令。
#要在 sed 命令行上执行多个命令时，只要用 -e 选项就可以了。命令 - e 可以省略。命令之间必须用分号隔开，并且在命令末尾和分号之间不能有空格。

sed -e 's/brown/green/; s/dog/cat/' data1.txt



# 实例 4：从文件中读取编辑器命令
#如果有大量要处理的 sed 命令，那么将它们放进一个单独的文件中通常会更方便一些
cat wgw_script1.sed
sed -f wgw_script1.sed data1.txt


#实例 5：更多的替换选项
#有 4 种可用的替换标记：
#  数字，表明新文本将替换第几处模式匹配的地方；
#  g ，表明新文本将会替换所有匹配的文本；
#  p ，表明原先行的内容要打印出来；
#  w file ，将替换的结果写到文件中。

cat data2.txt

# 只能替换每行中第一个出现的字符。
sed 's/test/trial/' data2.txt

#替换第二个字符，第一个不变。
sed 's/test/trial/2' data2.txt

# 所有的都替换
sed 's/test/trial/g' data2.tx

# 只替换匹配行中第一个出现的字符，并打印出匹配的行
sed -n 's/test/trial/p' data2.txt

# 替换所有匹配行，并将替换后的结果存储到data1.txt.bak文件
sed 's/test/trial/g w  data2.txt.bak' data2.txt

sed 's/\/bin\/bash/\/bin\/csh/' /etc/passwd
# 感叹号被用作字符串分隔符,功能如上
sed 's!/bin/bash!/bin/csh!' /etc/passwd


# 只修改第2行
sed '2s/dog/cat/' data2.txt

# 2,3行进行修改
sed '2,3s/dog/cat/' data2.txt

# 第2行开始的所有行
sed '2,$s/dog/cat/' data2.txt


# 对fox所在行的所有dog替换为cat。
sed '/fox/s/dog/cat/' data2.txt

sed '2{s/fox/elephant/;s/dog/cat/}' data2.txt
# 从第二行开始修改两处。
sed '2,${s/fox/elephant/;s/dog/cat/}' data2.txt

#实例 6. 删除行 并不会对源文件进行删除操作，只是输出结果。
# 删除所有行
sed 'd' data2.txt

# 删除2,3行
sed '2,3d' data2.txt

# 删除第二行开始的所有行
sed '2,$d' data2.txt

# 删除含有dog的行
sed '/dog/d' data2.tx

# 也可以使用两个文本模式来删除某个区间内的行，但这么做时要小心。你指定的第一个模式会“打开”行删除功能，第二个模式会“关闭”行删除功能。sed编辑器会删除两个指定行之间的所有行（包括指定的行）。
# 你指定的第一个模式会“打开”行删除功能，第二个模式会“关闭”行删除功能
sed '/1/,/3/d' date2.txt


#实例 7. 插入或者附加文本

#插入（ insert ）命令（ i ）会在指定行前增加一个新行；
#附加（ append ）命令（ a ）会在指定行后增加一个新行。
# 插入一行
# echo "Test Line 2" | sed 'i\Test Line 1'
# Test Line 1
# Test Line 2

# 附加一行
# echo "Test Line 2" | sed 'a\Test Line 1'
# Test Line 2
# Test Line 1

# 第三行前插入一条数据
sed '3i\This is an inserted line.' data1.txt
# The quick brown fox jumps over the lazy dog.
# The quick brown fox jumps over the lazy dog.
# This is an inserted line.
# The quick brown fox jumps over the lazy cat.
# The quick brown fox jumps over the lazy dog.


# 文章末尾添加一行数据
sed '$a\This is a new line of text.' data.txt
# The quick brown fox jumps over the lazy dog.
# The quick brown fox jumps over the lazy dog.
# The quick brown fox jumps over the lazy cat.
# The quick brown fox jumps over the lazy dog.
# This is a new line of text.


# 在文章开头插入两行数据
sed '1i\This is one line of new text.\n\This is another line of new text.' data1.txt
# This is one line of new text.
# This is another line of new text.
# The quick brown fox jumps over the lazy dog.
# The quick brown fox jumps over the lazy dog.
# The quick brown fox jumps over the lazy cat.
# The quick brown fox jumps over the lazy dog.

实例 8: 修改行
# 修改第三行
sed '3c\ This is a changed line of text.' data1.txt
# The quick brown fox jumps over the lazy dog.
# The quick brown fox jumps over the lazy dog.
#  This is a changed line of text.
# The quick brown fox jumps over the lazy dog.

 # 文本寻址  对包含cat的行进行改写
 sed '/cat/c\ "This is": "a changed line of text".' data1.txt
 # The quick brown fox jumps over the lazy dog.
 # The quick brown fox jumps over the lazy dog.
 #  "This is": "a changed line of text".
 # The quick brown fox jumps over the lazy dog.


# 把2,3行合并进行替换为一行。而不是逐一修改这两行文本
sed '2,3c\ This is a new line of text.' data.txt
# The quick brown fox jumps over the lazy dog.
#  This is a new line of text.
# The quick brown fox jumps over the lazy dog.

#实例 9：转换命令
#[address]y/inchars/outchars/
#转换命令会对 inchars 和 outchars 值进行一对一的映射。inchars 中的第一个字符会被转
#换为 outchars 中的第一个字符，第二个字符会被转换成 outchars 中的第二个字符。这个映射过程会一直持续到处理完指定字符。如果 inchars 和 outchars 的长度不同，则 sed 编辑器会产生一条错误消息。

cat data3.txt
# this is line 1
# this is line 1
# this is line 2
# this is line 3
# this is line 4
# this is line 5

sed 'y/123/789/' data3.txt
# this is line 7
# this is line 7
# this is line 8
# this is line 9
# this is line 4
# this is line 5

# 报错
sed 'y/1230/789/' data3.txt
sed: -e expression #1, char 11: strings for `y' command are different lengths`


#实例 10：写入文件

# 把data3.txt中的1-4行数据 写入test.txt文件。
sed '1,4w data3_bak.txt' data3.txt
# this is line 1
# this is line 1
# this is line 2
# this is line 3
# this is line 4
# this is line 5


cat data3_bak.txt
# this is line 1
# this is line 1
# this is line 2
# this is line 3

#实例 11：从文件中写入数据
# 读取命令的格式如下：[address]r filename
# filename 参数指定了数据文件的绝对路径或相对路径。你在读取命令中使用地址区间，只能指定单独一个行号或文本模式地址。sed编辑器会将文件中的文本插入到指定地址后。

sed '1r data4.txt' data3.txt
# this is line 1
# This is line number 1.
# This is line number 2.
# This is line number 3.
# This is line number 4.
# this is line 1
# this is line 2
# this is line 3
# this is line 4
# this is line 5


cat data4.txt
# This is line number 1.
# This is line number 2.
# This is line number 3.
# This is line number 4.


cat data3.txt
# this is line 1
# this is line 1
# this is line 2
# this is line 3
# this is line 4
# this is line 5


#实例 12：删除空白行

sed '/^$/d' data6.txt
# This is the header line.
# This is a data line.
# This is the last line.

cat data6.txt
This is the header line.

This is a data line.

This is the last line.


#实例 13：& 符号的使用：
echo "The cat sleeps in his hat." | sed 's/.at/"&"/g'
#The "cat" sleeps in his "hat".



# 实例 14: 剔除 html 标签
sed 's/<[^>]*>//g' data.html

# 删除多余的空白行。
sed 's/<[^>]*>//g ; /^$/d' data5.html


# 实例 15：mongdb 数据导出格式规整
# 添加引号及逗号
sed -i 's/^/"&/g;s/$/&",/g' file
# 改造为json串
sed -i "\$s/,//g;1s/^/{sn:{\$in:[&/;\$s/$/&]}}/" file
# 泵出数据


#在命令行上用 -n 选项，你可以禁止输出其他行，只打印包含匹配文本模式的行。
sed -n '/number 3/p' data4.txt

#也可以用它来快速打印数据流中的某些行。
sed -n '2,3p' data6.txt


#等号命令会打印行在数据流中的当前行号。行号由数据流中的换行符决定。每次数据流中出现一个换行符，sed编辑器会认为一行文本结束了。
sed '=' data4.txt


#列出（ list ）命令（ l ）可以打印数据流中的文本和不可打印的ASCII字符。任何不可打印字符要么在其八进制值前加一个反斜线，要么使用标准C风格的命名法（用于常见的不可打印字)，比如 \t ，来代表制表符），比如 \t ，来代表制表符。
sed -n 'l' data5.txt




# https://mp.weixin.qq.com/s/TYEqcV1oTV-jsm6kG8HdoQ
# 命令格式
# sed [options] '[地址定界] command' file(s)
# 常用选项 options 演示
sed "/aaa/p" demo  #匹配到的行会打印一遍，不匹配的行也会打印

sed -n "/aaa/p" demo  #-n不显示没匹配的行

sed -e "s/a/A/" -e "s/b/B/" demo  #-e多点编辑

sed -i.bak "s/a/A/g" demo  #-i直接对文件进行处理

# 地址界定演示
sed -n "p" demo  #不指定行，打印全文

sed "2s/b/B/g" demo  #替换第2行的b->B


sed -n "/aaa/p" demo

sed -n "1,2p" demo  #打印1-2行

sed -n "/aaa/,/DD/p" demo

sed -n "2,/DD/p" demo

sed "1~2s/[aA]/E/g" demo  #将奇数行的a或A替换为E

# 编辑命令 command 演示
sed "2d" demo  #删除第2行

sed -n "2p" demo  #打印第2行

sed "2a123" demo  #在第2行后加123

sed "1i123" demo  #在第1行前加123

sed "3c123\n456" demo  #替换第3行内容

sed -n "3w demo3" demo  #保存第3行的内容到demo3文件中

sed "1r demo3" demo  #读取demo3的内容到第1行后

sed -n "=" demo  #=打印行号

sed -n '2!p' demo  #打印除了第2行的内容

sed 's@[a-z]@\u&@g' demo  #将全文的小写字母替换为大写字母
sed 's/[a-z]/\u&/g' demo  #将全文的小写字母替换为大写字母


#sed 高级编辑命令

#（1）格式

#  h：把模式空间中的内容覆盖至保持空间中
#  H：把模式空间中的内容追加至保持空间中
#  g：从保持空间取出数据覆盖至模式空间
#  G：从保持空间取出内容追加至模式空间
#  x：把模式空间中的内容与保持空间中的内容进行互换
#  n：读取匹配到的行的下一行覆盖 至模式空间
#  N：读取匹配到的行的下一行追加 至模式空间
#  d：删除模式空间中的行
#  D：删除 当前模式空间开端至 \n 的内容（不再传 至标准输出），放弃之后的命令，但是对剩余模式空间重新执行 sed

#倒序输出文本内容
sed '1!G;h;$!d' num.txt

# 总结模式空间与保持空间关系：保持空间是模式空间一个临时存放数据的缓冲区，协助模式空间进行数据处理

#显示偶数行
seq 9 |sed -n 'n;p'


#倒序显示
seq 9 |sed  '1!G;h;$!d'


# 显示奇数行
seq 9 |sed 'H;n;d'

#显示最后一行
seq 9| sed 'N;D'

#每行之间加空行
seq 9 |sed 'G'


#把每行内容替换成空行
seq 9 |sed "g"

#确保每一行下面都有一个空行
seq 9 |sed '/^$/d;G'



sed 's/dog/cat/'  data1.txt

sleep 2
echo -e  "\n\n"


sed -e 's/brown/green/; s/dog/cat/' data1.txt



### 创建sed实用工具

#   加倍行距
sed '$!G' data2.txt

# 对可能的空白行加倍行距
sed '$!G' data6.txt
sed '/^$/d ; $!G' data6.txt

# 给文件的行编号
sed '=' data2.txt | sed 'N; s/\n/ /'

# 删除连续的空白行
sed '/./,/^$/!d' data8.txt

# 删除开头的空白行
sed '/./,$!d' data9.txt

# 删除结尾的空白行
sed '{:start  /^\n*$/{$d ; N ; b start }}' data10.txt

# 删除html标签
sed 's/<[^>]*>//g ; /^$/d' data11.txt



