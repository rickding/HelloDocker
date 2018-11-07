#!/bin/bash
clear

./down.sh

# compose
alias dcmp=docker-compose
dcmp up -d
dcmp ps

# dcmp logs -f
# docker exec -it redis_cache_1 bash -c "redis-cli -h redis -p 6379"
