#!/bin/bash
# ps -e | egrep '(docker)'
# kill

docker -v
docker container prune
docker container ls

docker image prune
docker images

docker stop hello-world
docker rm hello-world

docker run hello-world
docker run -it ubuntu bash

docker port hello-world
docker ps
