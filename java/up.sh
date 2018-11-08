#!/bin/bash
clear

./build.sh
./down.sh

# compose
docker-compose up -d
docker-compose ps

# alias dcmp=docker-compose && dcmp logs -f
# docker exec -it java_web_1 bash
