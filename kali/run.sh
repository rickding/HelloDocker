#!/bin/bash

./build.sh
./stop.sh

docker run --rm -it --name kali -d kali \
  bash

docker port kali
docker ps

# docker exec -it kali bash
# docker logs kali -f
