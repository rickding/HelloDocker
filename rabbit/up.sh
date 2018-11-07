#!/bin/bash
clear

./down.sh

# compose
alias dcmp=docker-compose
dcmp up -d
dcmp ps

# dcmp logs -f
# docker exec -it rabbit_mq_1 bash -c "rabbitmqctl list_users"
