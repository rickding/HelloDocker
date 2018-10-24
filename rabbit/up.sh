#!/bin/bash
clear

./down.sh

# compose
docker-compose up -d

docker-compose ps

# docker exec -it rabbit_mq_1 bash -c "rabbitmqctl list_users"
