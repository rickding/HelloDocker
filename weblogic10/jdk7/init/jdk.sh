#!/bin/bash

apt update
apt -y install software-properties-common

# https://www.cnblogs.com/bluestorm/p/5677625.html

# oracle openjdk
add-apt-repository ppa:openjdk-r/ppa
apt-get update

apt-get install -y openjdk-7-jdk

# /usr/lib/jvm/java-1.7.0-openjdk-amd64
