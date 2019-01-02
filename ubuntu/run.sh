#!/bin/bash

./stop.sh

docker run --rm --name ubuntu -p 32:22 ubuntu:18.04.local

docker port ubuntu
docker ps

# docker exec -it ubuntu bash
# docker logs ubuntu -f
