#!/bin/bash
clear

./stop.sh

docker run --name=grafana -p 3000:3000 -d grafana/grafana:latest

docker port grafana
docker ps

# docker exec -it grafana bash -c
# docker logs grafana -f
