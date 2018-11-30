#!/bin/bash

# ./build.sh

# deploy
docker stack deploy -c docker-compose.yml srv
docker node ls
docker stack ls
docker service ls
docker ps

# docker logs srv_web_1 -f
# docker exec -it srv_cache_1 bash -c "redis-cli -h cache -p 6379"
# docker exec -it srv_web_1 bash
