#!/bin/bash

java -version

# tar xzvf jdk1.7.0_121.tar.gz
ls -al ./jdk1.7.0_121

mkdir /usr/java/
mv ./jdk1.7.0_121 /usr/java/
ls -al /usr/java/

# set JAVA_HOME
# vi /etc/profile
JAVA_HOME=/usr/java/jdk1.7.0_121
PATH=$PATH:/usr/java/jdk1.7.0_121/bin
CLASSPATH=.:/usr/java/jdk1.7.0_121/jre/lib/dt.jar

export JAVA_HOME PATH CLASSPATH

source /etc/profile
echo "JAVA_HOME: " $JAVA_HOME

java -version
