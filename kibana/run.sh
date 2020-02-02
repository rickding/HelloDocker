#!/bin/bash
clear

./stop.sh

# docker run --name=kibana -p 5601:5601 -v $PWD/kibana.yml:/etc/kibana/kibana.yml -d kibana
docker run --name=kibana -p 5601:5601 -d kibana_local:latest

docker port kibana
docker ps

# docker exec -it kibana bash -c
# docker logs kibana -f
