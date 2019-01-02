#!/bin/bash
clear

./down.sh

# compose
docker-compose up -d
docker-compose ps

# docker-compose logs -f
# docker exec -it rabbit_mq_1 bash -c "rabbitmqctl list_users"

# http://127.0.0.1:15672
