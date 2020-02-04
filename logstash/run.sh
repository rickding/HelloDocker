#!/bin/bash
clear

./stop.sh

# docker run --name=logstash -p 9600:9600 -p 9601:9601 -v $PWD/logstash.conf:/usr/share/logstash/pipeline/logstash.conf -d logstash
docker run --name=logstash -p 9600:9600 -p 9601:9601 -d logstash_local:latest

docker port logstash
docker ps

# docker exec -it logstash bash -c
# docker logs logstash -f
