#!/bin/bash

# ./build.sh
./stop.sh

docker run --rm -it --name redhat -p 7001:7001 redhat:7.2.wls10.jdk7 /bin/sh

docker port redhat
docker ps

# docker exec -it redhat bash
# docker logs redhat -f
