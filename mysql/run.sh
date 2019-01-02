#!/bin/bash

./stop.sh

# https://www.cnblogs.com/cfrost/p/6241892.html
# docker run --rm --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:5

# set volumes for data and conf
DATA_PATH=$PWD
docker run --rm --name mysql -p 3306:3306 -v $DATA_PATH/data:/var/lib/mysql -v $DATA_PATH/conf:/etc/mysql/conf.d -v $DATA_PATH/initdb:/docker-entrypoint-initdb.d -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=did -d mysql:5

docker port mysql
docker ps

# docker exec -it mysql bash -c "mysql -uroot -proot"
# docker logs mysql -f
