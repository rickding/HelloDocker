#!/bin/bash
clear

./down.sh

# compose
alias dcmp=docker-compose
dcmp up -d
dcmp ps

# dcmp logs -f
# docker exec -it mysql_db_1 bash -c "mysql -uroot -proot"
