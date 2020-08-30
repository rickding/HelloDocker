#!/bin/bash

./down.sh

# compose
docker-compose up -d
docker-compose ps

# alias dcmp=docker-compose && dcmp logs -f
# docker exec -it oracle_db_1 bash -c "sqlplus sys/syspwd as sysdba"
