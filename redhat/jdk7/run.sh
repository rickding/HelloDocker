#!/bin/bash

./build.sh
./stop.sh

docker run --rm -it --name redhat -p 32:22 -d redhat:6.5.jdk7.local \
  /bin/sh

docker port redhat
docker ps

# docker exec -it redhat bash
# docker logs redhat -f
