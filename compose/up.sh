#!/bin/bash
clear

./build.sh
./down.sh

# compose
alias dcmp=docker-compose
dcmp up -d --scale redis=2
dcmp ps

# dcmp logs -f
# docker exec -it compose_cache_1 bash -c "redis-cli -h cache -p 6379"
# docker exec -it compose_web_1 bash
