#!/bin/bash

# ./build.sh
./stop.sh

docker run --rm -it --name redhat -p 7001:7001 -d redhat:6.5.11.wls10.jdk7.local \
  bash

docker port redhat
docker ps

# docker exec -it redhat bash
# docker logs redhat -f
