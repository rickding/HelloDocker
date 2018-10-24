#!/bin/bash
clear

docker-compose down

# compose
docker-compose up -d

docker-compose ps

# docker exec -it mysql_db_1 bash -c "mysql -uroot -proot"
