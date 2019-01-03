#!/bin/bash

# os
cat /etc/redhat-release
# cat /etc/issue
# lsb_release -a
# uname -a
# cat /proc/version

# 64bit?
arch

# environment
echo "PWD: " $PWD
echo "PATH: " $PATH

# java
java -version

# /usr/java/jdk1.7.0_80
echo "JAVA_HOME: " $JAVA_HOME

# yum
# yum repolist all | grep enabled
# cd /etc/yum.repos.d/ && ls -al ./

# installed yum rpm
# rpm -qa | grep yum
