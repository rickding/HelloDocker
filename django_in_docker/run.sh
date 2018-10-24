#!/bin/bash
clear

docker stop django_in_docker
docker rm django_in_docker

# build image
docker build -t django_in_docker .

# run image
docker run --rm --name django_in_docker -p 8000:8000 -d django_in_docker

docker port django_in_docker
docker ps

# docker exec -it django_in_docker bash
# docker logs django_in_docker
