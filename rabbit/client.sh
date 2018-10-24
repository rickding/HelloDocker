#!/bin/bash
clear

docker stop rabbit-client
docker rm rabbit-client

# docker run -it --rm --name rabbit-client --link rabbit:rabbit -e RABBITMQ_ERLANG_COOKIE='rabbit_cookie' rabbitmq:3 bash
# rabbitmqctl -n rabbit@rabbit list_users

docker run -it --rm --name rabbit-client --link rabbit:rabbit -e RABBITMQ_ERLANG_COOKIE='rabbit_cookie' -e RABBITMQ_NODENAME=rabbit@rabbit rabbitmq:3 bash
# rabbitmqctl list_users

docker port rabbit-client
docker ps
