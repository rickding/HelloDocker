#!/bin/bash

java -version

yum install -y jdk-7u80-linux-x64.rpm
ls -al /usr/java/jdk1.7.0_80

java -version

# set JAVA_HOME
# vi /etc/profile
JAVA_HOME=/usr/java/jdk1.7.0_80
PATH=$PATH:/usr/java/jdk1.7.0_80/bin
CLASSPATH=.:/usr/java/jdk1.7.0_80/jre/lib/dt.jar

export JAVA_HOME PATH CLASSPATH

source /etc/profile
echo "JAVA_HOME: " $JAVA_HOME
