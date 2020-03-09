#!/bin/bash

# ./build.sh

./down.sh

# compose
docker-compose up -d --remove-orphans
docker-compose ps

# alias dcmp=docker-compose && dcmp logs -f
# docker exec -it nginx_nginx_1 bash
