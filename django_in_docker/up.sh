#!/bin/bash
clear

./down.sh

# compose
docker-compose up -d

docker-compose ps

# docker exec -it django_in_docker_db_1 bash -c "mysql -uroot -proot"
