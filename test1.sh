
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

str="aa"

if [ ${str} = "abc" ]  #对于字符串，= ，！=， -z ，-n
then
    echo -e "str 等于 \"abc\" \n"
else
    echo -e "str 不等于 \"abc\" \n"
fi

# process=`ps -ef| grep dwmblocks | grep -v grep`; #查询mysqld进程，grep -v grep去掉grep进程
process=$(ps -ef| grep dwmblocks | grep -v grep); #查询mysqld进程，grep -v grep去掉grep进程

if [ "${process}" == "" ]; then
        sleep 1;
        echo "process 不存在,开始执行";
else
        echo "process 已经存在，需要重启";
        # break;
fi




# process=`ps -ef| grep dwmblocks | grep -v grep`; #查询mysqld进程，grep -v grep去掉grep进程
process=$(ps -ef| grep dwmblocks | grep -v grep); #查询mysqld进程，grep -v grep去掉grep进程

if [ "${process}" = "" ]; then
        sleep 1;
        echo "process 不存在,开始执行";
else
        echo "process 已经存在，需要重启";
        # break;
fi


count=`ps -ef |grep dwmblocks |grep -v grep |wc -l`
echo $count

if [ 0 == $count ];then
    echo  "不存在，启动"
else
    echo -e "已经存在，需要重启"
fi

