#!/bin/bash
clear

docker stop mysql-client
docker rm mysql-client

docker run -it --rm --name mysql-client --link mysql:mysql mysql sh -c 'exec mysql -h"mysql" -P"3306" -uroot -p"root"'
# docker run -it --rm --name mysql-client mysql mysql -h mysql -u root -p

docker port mysql-client
docker ps

# MySQL Workbench
