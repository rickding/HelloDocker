#!/bin/bash

./down.sh

rm -rf files

# compose
docker-compose up -d
docker-compose ps

# alias dcmp=docker-compose && dcmp logs -f
# docker exec -it ftp_ftp_1 bash
