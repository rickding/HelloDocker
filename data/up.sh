#!/bin/bash

# ./build.sh
./down.sh

# compose
docker-compose up -d
docker-compose ps

# docker logs data_db_1 -f
# docker exec -it data_db_1 bash
