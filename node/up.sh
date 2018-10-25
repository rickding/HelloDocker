#!/bin/bash
clear

./build.sh
./down.sh

# compose
docker-compose up -d

docker-compose ps

# docker exec -it node_web_1 bash
