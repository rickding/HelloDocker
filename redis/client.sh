#!/bin/bash
clear

docker stop redis-client
docker rm redis-client

docker run -it --rm --name redis-client --link redis:redis redis:4 redis-cli -h redis -p 6379

docker port redis-client
docker ps
