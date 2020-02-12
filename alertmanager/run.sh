#!/bin/bash
clear

./stop.sh

# docker run --name=alertmanager -p 9093:9093 -v ./alertmanager.yml:/etc/alertmanager/config.yml -d docker.io/prom/alertmanager:latest
docker run --name=alertmanager -p 9093:9093 -d alertmanager:latest

docker port alertmanager
docker ps

# docker exec -it alertmanager bash -c
# docker logs alertmanager -f
