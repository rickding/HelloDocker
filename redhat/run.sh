#!/bin/bash

./build.sh
./stop.sh

docker run --rm -it --name redhat -d redhat:6.5.11 \
  bash

docker port redhat
docker ps

# docker exec -it redhat bash
# docker logs redhat -f
