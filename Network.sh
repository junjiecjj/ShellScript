#! /usr/bin/env bash
#########################################################################
# File Name: network.sh
# Author:陈俊杰
# mail: 2716705056@qq.com
# Created Time: 2022年01月04日 星期二 22时30分08秒

# 此程序的功能是：

https://mp.weixin.qq.com/s?__biz=MzAxODI5ODMwOA==&mid=2666560068&idx=2&sn=d033da5d8c9a3913c7d013f401ba751b&chksm=80dcbeefb7ab37f9d648d721f0dbf844d702961cdad98d10740efb9b9be823fc10613c9369ee&mpshare=1&scene=24&srcid=1227dfTke1zpJpUmA7lOPmL6&sharer_sharetime=1640577232744&sharer_shareid=0d5c82ce3c8b7c8f30cc9a686416d4a8&exportkey=AYCUjeaJ7%2BxQOY%2Br1FC%2BfKs%3D&pass_ticket=sC3CHeyQYGeccRKcEFZTc5QFPLkATfa%2FDaZUd3NqKSoJnLZycjrxRYed7dyRyTYS&wx_header=0#rd
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








