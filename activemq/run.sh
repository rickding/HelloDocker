#!/bin/bash
clear

./stop.sh

docker run --name=activemq -p 8161:8161 -p 61616:61616 -d webcenter/activemq

docker port activemq
docker ps

# docker exec -it activemq bash -c
# docker logs activemq -f
