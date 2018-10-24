#!/bin/bash
clear

./down.sh

# compose
docker-compose up -d

docker-compose ps

# docker exec -it redis_cache_1 bash -c "redis-cli -h redis -p 6379"
