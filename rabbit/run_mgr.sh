#!/bin/bash
clear

docker stop rabbit_mgr
docker rm rabbit_mgr

docker run --name rabbit_mgr -p 15672:15672 -d --hostname mq rabbitmq:3-management

docker port rabbit_mgr
docker ps

# docker exec -it rabbit_mgr bash
# docker logs rabbit_mgr

# http://127.0.0.1:15672
