#!/bin/bash
clear

docker stop rabbit
docker rm rabbit

docker run --name rabbit -p 5672:5672 -d --hostname mq -e RABBITMQ_ERLANG_COOKIE='rabbit_cookie' rabbitmq:3

docker port rabbit
docker ps

# docker exec -it rabbit bash -c "rabbitmqctl list_users"
# docker logs rabbit -f
