#!/bin/bash
# ps -e | egrep '(docker)'
# kill

clear
docker -v

docker container prune
docker container ls

docker image prune
docker images

docker stop hello-world
docker rm hello-world

docker run hello-world
# docker run --rm -it ubuntu bash

docker port hello-world
docker ps
