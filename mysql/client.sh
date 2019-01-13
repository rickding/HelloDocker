#!/bin/bash

docker stop mysql-client
docker rm mysql-client

docker run -it --rm --name mysql-client --link mysql:mysql mysql:5 sh -c 'exec mysql -h"mysql" -P"3306" -uroot -p"root"'
# docker run -it --rm --name mysql-client mysql:5 mysql -h mysql -u root -p

docker port mysql-client
docker ps

# MySQL Workbench
