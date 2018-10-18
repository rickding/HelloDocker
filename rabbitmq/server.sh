#!/bin/bash
clear

docker stop rabbitmq
docker rm rabbitmq

docker run --name rabbitmq -p 5672:5672 -d --hostname rabbit -e RABBITMQ_ERLANG_COOKIE='rabbit_cookie' rabbitmq:3

docker port rabbitmq
docker ps

# docker exec -it rabbitmq bash
# docker logs rabbitmq
