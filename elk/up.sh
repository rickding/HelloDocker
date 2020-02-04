#!/bin/bash

# ./build.sh
./down.sh

# compose
docker-compose up -d
docker-compose ps

# docker logs starterdeploy_api_1 -f
# docker exec -it starterdeploy_admin_1 bash
