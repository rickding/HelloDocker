#!/bin/bash

# ./build.sh
./stop.sh

docker run --rm -it --name redhat -p 7001:7001 -d weblogic10 \
  bash

docker port redhat
docker ps

# docker exec -it redhat bash
# docker logs redhat -f
