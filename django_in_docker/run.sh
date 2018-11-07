#!/bin/bash
clear

./stop.sh

# build image
# docker build -t django_in_docker .

# run image
DATA_PATH=$PWD
docker run -it --name django_in_docker -v $DATA_PATH:/root/code -w /root/code --link mysql:db --link redis:cache --link rabbit:mq -p 8000:8000 -d django_in_docker

docker port django_in_docker
docker ps

# docker exec -it django_in_docker bash
# docker logs django_in_docker -f
