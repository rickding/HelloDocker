#!/bin/bash
clear

docker stop python2
docker rm python2

docker run --name python2 -d python:2

docker port python2
docker ps

docker exec -it python2 bash
# docker logs python2
