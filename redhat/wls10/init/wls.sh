#!/bin/bash

# user
groupadd weblogic
useradd -g weblogic weblogic
passwd weblogic

# java
java -version
echo "JAVA_HOME: " $JAVA_HOME

JAVA_HOME=/usr/java/jdk1.7.0_80
export JAVA_HOME

# install
mv wls1036_generic.jar /home/weblogic
cd /home/weblogic
# java -jar wls1036_generic.jar -mode=console

# domain
# cd /home/weblogic/Oracle/Middleware/wlserver_10.3/common/bin
# ./config.sh

# admin
# cd /home/weblogic/Oracle/Middleware/user_projects/domains/base_domain/servers/AdminServer
# cp /etc/init/boot.properties ./

# start
# cd /home/weblogic/Oracle/Middleware/user_projects/domains/base_domain
# ./startWeblogic.sh
