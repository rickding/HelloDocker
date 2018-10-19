#!/bin/bash
clear

docker stop node-app
docker rm node-app

# build image
docker build -t node-app .


# run image
docker run --rm --name node-app node-app

docker port node-app
docker ps

# docker exec -it node-app bash
# docker logs node-app
