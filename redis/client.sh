#!/bin/bash
clear

docker stop redis-client
docker rm redis-client

docker run --name redis-client -it --link redis:redis --rm redis redis-cli -h redis -p 6379

docker port redis-client
docker ps
