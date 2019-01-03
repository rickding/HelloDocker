#!/bin/bash

./build.sh
./stop.sh

docker run --rm -it --name redhat -p 32:22 -d redhat:7.2 \
  /bin/sh

docker port redhat
docker ps

# docker exec -it redhat bash
# docker logs redhat -f
