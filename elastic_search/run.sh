#!/bin/bash
clear

./stop.sh

docker run --name=elasticsearch -p 9200:9200 -d elasticsearch

docker port elasticsearch
docker ps

# docker exec -it elasticsearch bash -c
# docker logs elasticsearch -f
