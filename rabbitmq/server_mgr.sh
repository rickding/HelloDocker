#!/bin/bash
clear

docker stop rabbitmq_mgr
docker rm rabbitmq_mgr

docker run --name rabbitmq_mgr -p 15672:15672 -d --hostname rabbit rabbitmq:3-management

docker port rabbitmq_mgr
docker ps

# docker exec -it rabbitmq_mgr bash
# docker logs rabbitmq_mgr

# http://127.0.0.1:15672
