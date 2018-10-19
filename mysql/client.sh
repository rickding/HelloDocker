#!/bin/bash
clear

docker stop mysql-client
docker rm mysql-client

docker run -it --rm --name mysql-client --link mysql:mysql mysql sh -c 'exec mysql -h"192.168.1.151" -P"3306" -uroot -p"root"'
# docker run -it --rm --name mysql-client mysql mysql -h 192.168.1.151 -u root -p

docker port mysql-client
docker ps

# MySQL Workbench
