#!/bin/bash
clear

docker stop python-app
docker rm python-app

# build image
docker build -t python-app .

# run image
docker run --rm --name python-app python-app

docker port python-app
docker ps

# docker exec -it python-app bash
# docker logs python-app -f
