#!/bin/bash
clear

./stop.sh

# https://www.cnblogs.com/cfrost/p/6241892.html
# docker run --rm --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:5

# set volumes for data and conf
MYSQL_PATH=$PWD
docker run --rm --name mysql -p 3306:3306 -v $MYSQL_PATH/data:/var/lib/mysql -v $MYSQL_PATH/conf:/etc/mysql/conf.d -v $MYSQL_PATH/initdb:/docker-entrypoint-initdb.d -e MYSQL_ROOT_PASSWORD=root -d mysql:5

docker port mysql
docker ps

# docker exec -it mysql bash -c "mysql -uroot -proot"
# docker logs mysql
