#!/bin/bash
clear

./down.sh

# compose
docker-compose up -d
docker-compose ps

# alias dcmp=docker-compose && dcmp logs -f
# docker exec -it prometheus_prometheus_1 bash
