#! /usr/bin/env bash
#########################################################################
# File Name: network.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2022年01月04日 星期二 22时30分08秒

# 此程序的功能是：

# https://mp.weixin.qq.com/s?__biz=MzAxODI5ODMwOA==&mid=2666560068&idx=2&sn=d033da5d8c9a3913c7d013f401ba751b&chksm=80dcbeefb7ab37f9d648d721f0dbf844d702961cdad98d10740efb9b9be823fc10613c9369ee&mpshare=1&scene=24&srcid=1227dfTke1zpJpUmA7lOPmL6&sharer_sharetime=1640577232744&sharer_shareid=0d5c82ce3c8b7c8f30cc9a686416d4a8&exportkey=AYCUjeaJ7%2BxQOY%2Br1FC%2BfKs%3D&pass_ticket=sC3CHeyQYGeccRKcEFZTc5QFPLkATfa%2FDaZUd3NqKSoJnLZycjrxRYed7dyRyTYS&wx_header=0#rd
#########################################################################



:<<EOF

1.ifconfig
ifconfig 命令 被用于配置和显示 Linux 内核中网络接口的网络参数。用 ifconfig 命令配置的网卡信息，在网卡重启后机器重启后，配置就不存在。要想将上述的配置信息永远的存的电脑里，那就要修改网卡的配置文件了。

# ifconfig

eth0: flags=4163<UP,BROADCAST,RUNNING,MULTICAST>  mtu 1500
        inet 172.24.186.123  netmask 255.255.240.0  broadcast 172.24.191.255
        ether 00:16:3e:24:5d:8c  txqueuelen 1000  (Ethernet)
        RX packets 36773275  bytes 9755326821 (9.0 GiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 31552596  bytes 6792314542 (6.3 GiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0

lo: flags=73<UP,LOOPBACK,RUNNING>  mtu 65536
        inet 127.0.0.1  netmask 255.0.0.0
        loop  txqueuelen 1000  (Local Loopback)
        RX packets 36893510  bytes 27158894604 (25.2 GiB)
        RX errors 0  dropped 0  overruns 0  frame 0
        TX packets 36893510  bytes 27158894604 (25.2 GiB)
        TX errors 0  dropped 0 overruns 0  carrier 0  collisions 0
ifconfig 带网口（eth0) 命令仅显示特定的接口详细信息，例如 IP Address, MAC Address 等与 -a 如果它也被禁用，选项将显示所有可用的接口详细信息。

# ifconfig eth0
分配 IP 地址和网关
分配一个 IP Address 和 Gateway即时接口。如果系统重新启动，该设置将被删除。

# ifconfig eth0 192.168.1.110 netmask 255.255.255.0
启用或禁用特定网口
enable 或者 disable ，我们使用示例命令如下。

启用 eth0
# ifup eth0
禁用 eth0
# ifdown eth0
设置 MTU 大小
默认情况下 MTU 大小是 1500. 我们可以设置所需MTU大小与以下命令。代替XXXX 与大小。

# ifconfig eth0 mtu XXXX
将接口设置为混杂模式
Network interface 只有收到的数据包属于那个特定的 NIC. 如果你把接口promiscuous模式它将接收所有的数据包。这对于捕获数据包和稍后分析非常有用。为此，您可能需要超级用户访问权限。

# ifconfig eth0 - promisc
2. ping 命令
ping 命令 用来测试主机之间网络的连通性。执行 ping 指令会使用 ICMP 传输协议，发出要求回应的信息，若远端主机的网络功能没有问题，就会回应该信息，因而得知该主机运作正常。

# ping 127.0.0.1
或
# ping www.rumenz.com
在 Linuxping 命令一直执行，直到您中断。平与-c 选项退出后 N 请求数（成功或错误响应）。

# ping -c 5 www.rumenz.comPING www.rumenz.com (42.194.162.109) 56(84) bytes of data.64 bytes from 42.194.162.109 (42.194.162.109): icmp_seq=1 ttl=52 time=35.8 ms64 bytes from 42.194.162.109 (42.194.162.109): icmp_seq=2 ttl=52 time=35.6 ms64 bytes from 42.194.162.109 (42.194.162.109): icmp_seq=3 ttl=52 time=35.6 ms64 bytes from 42.194.162.109 (42.194.162.109): icmp_seq=4 ttl=52 time=35.6 ms64 bytes from 42.194.162.109 (42.194.162.109): icmp_seq=5 ttl=52 time=35.6 ms--- www.rumenz.com ping statistics ---5 packets transmitted, 5 received, 0% packet loss, time 4004msrtt min/avg/max/mdev = 35.662/35.720/35.893/0.190 ms
3. traceroute 命令
traceroute是一个网络故障排除实用程序，它显示到达目的地所用的跳数，也决定了数据包的传播路径。下面我们正在追踪通往全球的路线DNS server IP Address 并且能够到达目的地还显示该数据包正在旅行的路径。

# traceroute 8.8.8.8
4. netstat 命令
netstat 命令 用来打印 Linux 中网络系统的状态信息，可让你得知整个 Linux 系统的网络情况。

# netstat -rKernel IP routing tableDestination     Gateway         Genmask         Flags   MSS Window  irtt Ifacedefault         gateway         0.0.0.0         UG        0 0          0 eth0link-local      0.0.0.0         255.255.0.0     U         0 0          0 eth0172.24.176.0    0.0.0.0         255.255.240.0   U         0 0          0 eth0
5. dig 命令
dig 命令 是常用的域名查询工具，可以用来测试域名系统工作是否正常。

# dig www.rumenz.com; <<>> DiG 9.11.4-P2-RedHat-9.11.4-26.P2.el7_9.7 <<>> www.rumenz.com;; global options: +cmd;; Got answer:;; ->>HEADER<<- opcode: QUERY, status: NOERROR, id: 11798;; flags: qr rd ra; QUERY: 1, ANSWER: 1, AUTHORITY: 0, ADDITIONAL: 0;; QUESTION SECTION:;www.rumenz.com.                        IN      A;; ANSWER SECTION:www.rumenz.com.         583     IN      A       42.194.162.109;; Query time: 0 msec;; SERVER: 100.100.2.136#53(100.100.2.136);; WHEN: Sat Nov 20 21:45:32 CST 2021;; MSG SIZE  rcvd: 48
6. nslookup 命令
nslookup 命令也用于找出 DNS相关查询。下面的例子显示A Record (IP Address） 的 rumenz.com.

# nslookup www.rumenz.comServer:         100.100.2.136Address:        100.100.2.136#53Non-authoritative answer:Name:   www.rumenz.comAddress: 42.194.162.109
7. route 命令
route` 命令还显示和操作 `ip`路由表。查看默认路由表`Linux
# route
使用以下命令添加、删除路由和默认网关。

添加路由
# route add -net 10.10.10.0/24 gw 192.168.0.1
删除路由
# route del -net 10.10.10.0/24 gw 192.168.0.1
添加默认网关
# route add default gw 192.168.0.1

8. host 命令
host 查找名称的命令 IP 或者 IP 命名 IPv4 或者 IPv6 并查询 DNS 记录。

# host www.rumenz.comwww.rumenz.com has address 42.194.162.109
使用 -t 选项我们可以找出 DNS 资源记录，例如 CNAME, NS, MX, SOA 等等。

//先安装# yum install bind-utils -y# host -t CNAME www.baidu.comwww.baidu.com is an alias for www.a.shifen.com.
9. arp 命令
arp 命令 是 Address Resolution Protocol，地址解析协议，是通过解析网络层地址来找寻数据链路层地址的一个网络协议包中极其重要的网络传输协议。而该命令可以显示和修改 arp 协议解析表中的缓冲数据。

# arp -e
Address                  HWtype  HWaddress           Flags Mask            Iface
gateway                  ether   ee:ff:ff:ff:ff:ff   C                     eth0
10. ethtool 命令
ethtool 命令用于获取以太网卡的配置信息，或者修改这些配置。这个命令比较复杂，功能特别多。

# ethtool eth0
Settings for eth0:
        Link detected: yes
11. iwconfig 命令
iwconfig  系统配置无线网络设备或显示无线网络设备信息。iwconfig 命令类似于 ifconfig 命令，但是他配置对象是无线网卡，它对网络设备进行无线操作，如设置无线通信频段

//先安装
# yum install -y wireless-tools
# iwconfig [interface]
eth0      no wireless extensions.
12. hostname 命令
hostname是在网络中识别。执行hostname命令以查看机器的主机名。可以在其中永久设置主机名/etc/sysconfig/network. 设置正确的主机名后需要重新启动。

# hostname
rumenz.com

13. netstat命令详解
https://mp.weixin.qq.com/s?__biz=MzA4NzQzMzU4Mg==&mid=403434363&idx=4&sn=ad352de89ba037d85382f7e0f2d0624a&chksm=0dc6c37a3ab14a6cfa78f817d75129660c21e3d743cfca841aaf9463786d93099345422c2583&mpshare=1&scene=24&srcid=0723NsLCfZd2fIi6qTBxiTtX&sharer_sharetime=1627007523722&sharer_shareid=0d5c82ce3c8b7c8f30cc9a686416d4a8&exportkey=AVA%2F8wc%2BRTe%2F6opns9zdPqY%3D&pass_ticket=sC3CHeyQYGeccRKcEFZTc5QFPLkATfa%2FDaZUd3NqKSoJnLZycjrxRYed7dyRyTYS&wx_header=0#rd

简介

netstat 命令用于显示各种网络相关信息，如网络连接，路由表，接口状态 (Interface Statistics)，masquerade 连接，多播成员 (Multicast Memberships) 等等。

输出信息含义

执行netstat后，其输出结果为:
从整体上看，netstat的输出结果可以分为两个部分：
1. Active Internet connections，称为有源TCP连接，其中"Recv-Q"和"Send-Q"指%0A的是接收队列和发送队列。这些数字一般都应该是0。如果不是则表示软件包正在队列中堆积。这种情况只能在非常少的情况见到。
2. Active UNIX domain sockets，称为有源Unix域套接口(和网络套接字一样，但是只能用于本机通信，性能可以提高一倍)。
Proto显示连接使用的协议,RefCnt表示连接到本套接口上的进程号,Types显示套接口的类型,State显示套接口当前的状态,Path表示连接到套接口的其它进程使用的路径名。

-a (all)显示所有选项，默认不显示LISTEN相关
-t (tcp)仅显示tcp相关选项
-u (udp)仅显示udp相关选项
-n 拒绝显示别名，能显示数字的全部转化成数字。
-l 仅列出有在 Listen (监听) 的服务状态
-p 显示建立相关链接的程序名
-r 显示路由信息，路由表
-e 显示扩展信息，例如uid等
-s 按各个协议进行统计
-c 每隔一个固定时间，执行该netstat命令。

提示：LISTEN和LISTENING的状态只有用-a或者-l才能看到

实用命令实例

1. 列出所有端口 (包括监听和未监听的)

列出所有端口 netstat -a

# netstat -a | more

列出所有 tcp 端口 netstat -at
# netstat -at

列出所有 udp 端口 netstat -au

# netstat -au

2. 列出所有处于监听状态的 Sockets

只显示监听端口 netstat -l

# netstat -l

只列出所有监听 tcp 端口 netstat -lt

# netstat -lt

只列出所有监听 udp 端口 netstat -lu

# netstat -lu

只列出所有监听 UNIX 端口 netstat -lx

# netstat -lx



3. 显示每个协议的统计信息

显示所有端口的统计信息 netstat -s

# netstat -s

显示 TCP 或 UDP 端口的统计信息 netstat -st 或 -su

# netstat -st 
# netstat -su

4. 在 netstat 输出中显示 PID 和进程名称 netstat -p
netstat -p 与其它参数一起使用就可以添加 “PID/进程名称” 到 netstat 输出中，这样 debugging 的时候可以很方便的发现特定端口运行的程序。

# netstat -pt


5. 在 netstat 输出中不显示主机，端口和用户名 (host, port or user)
当你不想让主机，端口和用户名显示，使用 netstat -n。将会使用数字代替那些名称。

# netstat -an

如果只是不想让这三个名称中的一个被显示，使用以下命令

# netsat -a --numeric-ports
# netsat -a --numeric-hosts
# netsat -a --numeric-users

6. 持续输出 netstat 信息
netstat 将每隔一秒输出网络信息。

# netstat -c

7. 显示系统不支持的地址族 (Address Families)

netstat --verbose

在输出的末尾，会有如下的信息

8. 显示核心路由信息 netstat -r

# netstat -r

注意： 使用 netstat -rn 显示数字格式，不查询主机名称。

9. 找出程序运行的端口
并不是所有的进程都能找到，没有权限的会不显示，使用 root 权限查看所有的信息。

# netstat -ap | grep ssh

找出运行在指定端口的进程

# netstat -an | grep ':80'

10. 显示网络接口列表

# netstat -i

显示详细信息，像是 ifconfig 使用 netstat -ie:

# netstat -ie

11. IP和TCP分析
查看连接某服务端口最多的的IP地址

user@linuxprobe:~$ netstat -nat | grep "192.168.1.15:22" |awk '{print $5}'|awk -F: '{print $1}'|sort|uniq -c|sort -nr|head -20


TCP各种状态列表

user@linuxprobe:~$ netstat -nat |awk '{print $6}'

先把状态全都取出来,然后使用uniq -c统计，之后再进行排序。

user@linuxprobe:~$ netstat -nat |awk '{print $6}'|sort|uniq -c

最后的命令如下:

netstat -nat |awk '{print $6}'|sort|uniq -c|sort -rn

分析access.log获得访问前10位的ip地址

awk '{print $1}' access.log |sort|uniq -c|sort -nr|head -10

EOF


# https://mp.weixin.qq.com/s?__biz=MzUxMjEyNDgyNw==&mid=2247500145&idx=2&sn=971786f023fd7feb93e4758f98cdd90d&chksm=f96bb385ce1c3a93f3fed317210c2a799f471056b0abf98f882f0fd464695f209a0214833f57&mpshare=1&scene=1&srcid=1130D7asobVULh7M9wiVxcDW&sharer_sharetime=1640345392044&sharer_shareid=0d5c82ce3c8b7c8f30cc9a686416d4a8&exportkey=AdCmsWTTDkWExjIMas%2BG5kk%3D&pass_ticket=XxqSE3fWpMYE7U9fBYbnbbcTVemYMCwhsfz0nfuUybClUM4Z88AjObZ5U%2FCF7JjE&wx_header=0#rd
# 在办公或家庭环境，我们的虚拟机或服务器上配置的通常是内网 IP 地址，我们如何知道，在与外网通信时，我们的公网出口 IP 是神马呢？
# 这个在 Linux 上非常简单，一条命令搞定
curl ip.sb
curl ifconfig.me
# 上述两条命令都可以


#网卡
#查看网卡硬件信息
lspci | grep -i 'eth'

# 查看系统的所有网络接口
ifconfig -a
# 或者是
ip link show


# 如果要查看某个网络接口的详细信息，例如eth0的详细参数和指标
ethtool eth0








