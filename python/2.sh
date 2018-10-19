#!/bin/bash
clear

docker stop python2
docker rm python2

docker run -it --rm --name python2 python:2

# run .py file
# docker run --privileged -it --rm --name python2 -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:2 python hello.py

docker port python2
docker ps

# docker exec -it python2 bash
# docker logs python2
