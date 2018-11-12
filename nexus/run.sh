#!/usr/bin/env bash
clear

./stop.sh

# http://127.0.0.1:8081, admin/admin123
docker run -it --rm --name nexus -p 5000:5000 -p 8081:8081 -d sonatype/nexus3

docker port nexus
docker ps
