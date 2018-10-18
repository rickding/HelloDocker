#!/bin/bash
clear

docker stop mysql-client
docker rm mysql-client

docker run --name mysql-client -it --link mysql:mysql --rm mysql sh -c 'exec mysql -h"192.168.1.151" -P"3306" -uroot -p"root"'
# docker run --name mysql-client -it --rm mysql mysql -h 192.168.1.151 -u root -p

docker port mysql-client
docker ps

# MySQL Workbench
