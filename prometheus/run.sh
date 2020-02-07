#!/bin/bash
clear

./stop.sh

# docker run --name=prometheus -p 9090:9090 -v $PWD/prometheus.yml:/etc/prometheus/prometheus.yml -d prom/prometheus:latest --config.file=/etc/prometheus/prometheus.yml
docker run --name=prometheus -p 9090:9090 -d prometheus:latest

docker port prometheus
docker ps

# docker exec -it prometheus bash -c
# docker logs prometheus -f
