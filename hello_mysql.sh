#!/bin/bash
# ps -e | egrep '(docker)'
# kill

docker -v
docker container ls
docker container prune

docker image prune
docker images

docker stop hello-mysql
docker rm hello-mysql

docker run --name hello-mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:5

docker port hello-mysql
docker ps

# https://www.cnblogs.com/zhuyp1015/p/3561470.html
# apt-get install mysql-client
# mysql -u root -p 
