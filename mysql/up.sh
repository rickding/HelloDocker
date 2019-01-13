#!/bin/bash

./down.sh

# compose
docker-compose up -d
docker-compose ps

# alias dcmp=docker-compose && dcmp logs -f
# docker exec -it mysql_db_1 bash -c "mysql -uroot -proot"
