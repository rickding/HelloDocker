#!/bin/bash
clear

./stop.sh

# docker run --name redis -p 6379:6379 -d redis:4
# docker run --name redis -p 6379:6379 -d redis:4 redis-server --appendonly yes

# set data volume
DATA_PATH=$PWD
docker run --name redis -p 6379:6379 -v $DATA_PATH/data:/data -d redis:4 redis-server --appendonly yes

docker port redis
docker ps

# docker exec -it redis bash -c "redis-cli -h redis -p 6379"
# docker logs redis -f
