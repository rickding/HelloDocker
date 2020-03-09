#!/bin/bash

apt autoremove -y
apt update
apt -y install software-properties-common

# specified repositories or gedit /etc/apt/sources.list
add-apt-repository "deb https://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse"
apt update


# docker: update image source
apt -y install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu  xenial  stable"
apt update
apt -y install docker-ce

# docker from snap
# snap install docker

# docker-compose
pip install -i http://pypi.douban.com/simple --trusted-host pypi.douban.com docker-compose
alias dcmp=docker-compose
