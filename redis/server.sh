#!/bin/bash
clear

docker stop redis
docker rm redis

# docker run --name redis -p 6379:6379 -d redis:4
docker run --name redis -p 6379:6379 -d redis:4 redis-server --appendonly yes

docker port redis
docker ps

# docker exec -it redis bash
# docker logs redis
