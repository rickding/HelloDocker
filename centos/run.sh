#!/bin/bash

./build.sh
./stop.sh

docker run --rm -it --name centos -d centos:6.10.local \
  bash

docker port centos
docker ps

# docker exec -it centos bash
# docker logs centos -f
