#!/bin/bash

apt update
apt -y install software-properties-common

add-apt-repository "deb https://mirrors.ustc.edu.cn/ubuntu/ xenial main restricted universe multiverse"
apt update

# blas: https://stackoverflow.com/questions/11443302/compiling-numpy-with-openblas-integration
apt -y install libopenblas-dev
