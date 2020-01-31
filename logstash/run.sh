#!/bin/bash
clear

./stop.sh

# docker run --name=logstash -p 5601:5601 -d docker.elastic.co/logstash/logstash:7.5.2
docker run --name=logstash --rm -it docker.elastic.co/logstash/logstash:7.5.2

docker port logstash
docker ps

# docker exec -it logstash bash -c
# docker logs logstash -f
