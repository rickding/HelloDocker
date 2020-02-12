#!/bin/bash

# ./build.sh
./down.sh

# compose
docker-compose up -d
docker-compose ps

# docker logs alert_alertmanager_1 -f
# docker exec -it alert_alertmanager_1 bash
