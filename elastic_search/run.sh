#!/bin/bash
clear

./stop.sh

docker run --name=es -p 9200:9200 -d elasticsearch

docker port es
docker ps

# docker exec -it es bash -c
# docker logs es -f
