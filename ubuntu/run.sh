#!/bin/bash

./build.sh
./stop.sh

docker run --rm -it --name ubuntu -d ubuntu:18.04.local \
  bash

docker port ubuntu
docker ps

# docker exec -it ubuntu bash
# docker logs ubuntu -f
