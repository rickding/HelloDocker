#!/bin/bash
clear

./down.sh

# compose
docker-compose up -d
docker-compose ps

# alias dcmp=docker-compose && dcmp logs -f
# docker exec -it elastic_search_es_1 bash
