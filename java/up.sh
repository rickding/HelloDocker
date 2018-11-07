#!/bin/bash
clear

./build.sh
./down.sh

# compose
alias dcmp=docker-compose
dcmp up -d
dcmp ps

# dcmp logs -f
# docker exec -it java_web_1 bash
