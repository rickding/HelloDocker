#!/bin/bash

./build.sh
./stop.sh

docker run --rm -it --name ubuntu -p 32:22 -d ubuntu:18.04.local \
  bash

docker port ubuntu
docker ps

# docker exec -it ubuntu bash
# docker logs ubuntu -f
