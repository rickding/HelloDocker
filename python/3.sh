#!/bin/bash
clear

docker stop python3
docker rm python3

docker run -it --rm --name python3 python:3

docker port python3
docker ps

# docker exec -it python3 bash
# docker logs python3
