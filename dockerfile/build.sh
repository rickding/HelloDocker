#!/bin/bash
clear

docker stop docker-whale
docker rm docker-whale

# build image
docker build -t docker-whale .


# run image
docker run --rm --name docker-whale docker-whale

docker port docker-whale
docker ps

# docker exec -it docker-whale bash
# docker logs docker-whale
