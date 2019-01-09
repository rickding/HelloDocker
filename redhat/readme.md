# redhat
https://access.redhat.com/containers/
https://access.redhat.com/containers/?tab=overview#/registry.connect.redhat.com/azul/zulu-jdk-7u191
https://access.redhat.com/containers/?tab=security#/registry.access.redhat.com/rhel6/rhel/images/6.5-11

docker pull registry.connect.redhat.com/azul/zulu-jdk-7u191:latest
docker pull registry.access.redhat.com/rhel6/rhel:6.5-11

# https://hub.docker.com/r/yjjy0921/redhat7.2
docker pull yjjy0921/redhat7.2:latest
docker pull wjp719/redhat6.5:latest
docker pull inventx/redhat-openjdk-18:latest

docker pull registry.cn-shanghai.aliyuncs.com/hellodock/redhat:7.2

# yum & repo
https://www.cnblogs.com/syqlp/p/6555524.html

# redhat in virtualbox
https://www.jianshu.com/p/91f9bc2b3c0d

vim /etc/sysconfig/network-scripts/ifcfg-xxx

BOOTPROTO=static
IPADDR=192.168.1.222
NETMASK=255.255.255.0
GATEWAY=192.168.1.1

ONBOOT=yes
DNS1=192.168.1.1
DNS2=192.168.1.1

ifconfig
service network restart

# hostname unknown
vim /etc/hosts
add hostname, e.g. redhat

# no route to host
iptables -F
