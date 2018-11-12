#!/usr/bin/env bash
clear

./stop.sh

docker run -it --name nginx -p 80:80 -v $PWD:/usr/share/nginx/html:ro -d nginx:stable

docker port nginx
docker ps
