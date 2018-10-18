#!/bin/bash
clear

docker stop rabbitmq-client
docker rm rabbitmq-client

# docker run --name rabbitmq-client -it --rm --link rabbitmq:rabbit -e RABBITMQ_ERLANG_COOKIE='rabbit_cookie' rabbitmq:3 bash
# rabbitmqctl -n rabbit@rabbit list_users

docker run --name rabbitmq-client -it --rm --link rabbitmq:rabbit -e RABBITMQ_ERLANG_COOKIE='rabbit_cookie' -e RABBITMQ_NODENAME=rabbit@rabbit rabbitmq:3 bash
# rabbitmqctl list_users

docker port rabbitmq-client
docker ps
