#!/bin/bash
clear

./stop.sh

docker run --name=logstash -p 9600:9600 -p 9601:9601 -d docker.elastic.co/logstash/logstash:7.5.2

docker port logstash
docker ps

# docker exec -it logstash bash -c
# docker logs logstash -f
