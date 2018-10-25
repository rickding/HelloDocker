#!/bin/bash
clear

./build.sh
./down.sh

# compose
docker-compose up -d --scale redis=2

docker-compose ps

# docker exec -it compose_cache_1 bash -c "redis-cli -h cache -p 6379"
# docker exec -it compose_web_1 bash
