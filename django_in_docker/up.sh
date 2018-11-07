#!/bin/bash
clear

# ./build.sh
./down.sh

# compose
docker-compose up -d
docker-compose ps

# alias dcmp=docker-compose && dcmp logs -f
# docker exec -it django_in_docker_db_1 bash -c "mysql -uroot -proot"
# docker exec -it django_in_docker_web_1 bash
