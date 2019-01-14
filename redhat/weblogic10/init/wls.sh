#!/bin/bash

# user
passwd weblogic
su weblogic

$JAVA_HOME
source /etc/profile

# install
cd /home/weblogic
java -jar wls1036_generic.jar

# domain
cd /home/weblogic/Oracle/Middleware/wlserver_10.3/common/bin
./config.sh

# admin
cd /home/weblogic/Oracle/Middleware/user_projects/domains/base_domain/servers/AdminServer
cp /home/weblogic/boot.properties ./

cd /home/weblogic/Oracle/Middleware/user_projects/domains/base_domain/security
cp /home/weblogic/boot.properties ./

# start
cd /home/weblogic/Oracle/Middleware/user_projects/domains/base_domain
# ./startWebLogic.sh
