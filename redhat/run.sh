#!/bin/bash

./build.sh
./stop.sh

docker run --rm --name redhat -p 32:22 redhat:7.2

docker port redhat
docker ps

# docker exec -it redhat bash
# docker logs redhat -f
