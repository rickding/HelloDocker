#!/bin/bash

# install
java -jar wls1036_generic.jar -mode=console

# domain
cd /home/weblogic/Oracle/Middleware/wlserver_10.3/common/bin
./config.sh

# admin
cd /home/weblogic/Oracle/Middleware/user_projects/domains/base_domain/servers/AdminServer
cp /etc/init/boot.properties ./

# start
cd /home/weblogic/Oracle/Middleware/user_projects/domains/base_domain
# ./startWeblogic.sh
