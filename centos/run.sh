#!/bin/bash

./build.sh
./stop.sh

docker run --rm --name centos -p 32:22 centos:6.10.local

docker port centos
docker ps

# docker exec -it centos bash
# docker logs centos -f
