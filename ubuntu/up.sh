#!/bin/bash

# ./build.sh
./down.sh

# compose
docker-compose up -d
docker-compose ps

# docker exec -it ubuntu_web_1 bash

./logs.sh
