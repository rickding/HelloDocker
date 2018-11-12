#!/bin/bash
clear

./stop.sh

docker run -t postman/newman --url="https://www.getpostman.com/collections/8a0c9bc08f062d12dcda"

# set collection volume
#docker run -v $PWD/collections:/etc/postman -t postman/newman \
#    https://www.getpostman.com/collections/df0a40ef41d570c48154 \
#    --environment="HTTPBinNewmanTest.json.postman_environment" \
#    --reporters junit --reporter-junit-export="newman-report.xml"

docker port postman
docker ps

# docker exec -it postman bash
# docker logs postman -f
