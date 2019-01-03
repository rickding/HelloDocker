#!/bin/bash

# uninstall
rpm -qa | grep yum
rpm -qa | grep yum | xargs rpm -e --nodeps
rpm -qa | grep yum

# download
wget https://mirrors.aliyun.com/centos/7/os/x86_64/Packages/yum-metadata-parser-1.1.4-10.el7.x86_64.rpm
wget https://mirrors.aliyun.com/centos/7/os/x86_64/Packages/yum-3.4.3-150.el7.centos.noarch.rpm
wget https://mirrors.aliyun.com/centos/7/os/x86_64/Packages/yum-plugin-fastestmirror-1.1.31-40.el7.noarch.rpm
wget https://mirrors.aliyun.com/centos/7/os/x86_64/Packages/yum-utils-1.1.31-40.el7.noarch.rpm

# python-urlgrabber
rpm -qa | grep python-urlgrabber | xargs rpm -e --nodeps
wget https://mirrors.aliyun.com/centos/7/os/x86_64/Packages/python-urlgrabber-3.10-8.el7.noarch.rpm
rpm -ivh python-urlgrabber-3.10-8.el7.noarch.rpm

# install
rpm -ivh yum-metadata-parser-1.1.4-10.el7.x86_64.rpm yum-3.4.3-150.el7.centos.noarch.rpm yum-plugin-fastestmirror-1.1.31-40.el7.noarch.rpm

# backup
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup

# download repo
wget http://mirrors.aliyun.com/repo/Centos-7.repo

# replace $releasever
sed -i 's/$releasever/7/g' /etc/yum.repos.d/Centos-7.repo

# run and cache
yum clean all
yum makecache
yum update

yum repolist all
