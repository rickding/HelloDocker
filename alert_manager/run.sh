#!/bin/bash
clear

./stop.sh

# docker run --name=alert_manager -p 9090:9090 -v $PWD/prometheus.yml:/etc/prometheus/prometheus.yml -d quay.io/prometheus/alertmanager:latest --config.file=/etc/prometheus/prometheus.yml
docker run --name=alert_manager -p 9090:9090 -d alert_manager:latest

docker port alert_manager
docker ps

# docker exec -it alert_manager bash -c
# docker logs alert_manager -f
