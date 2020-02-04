#!/usr/bin/env bash

./stop.sh

# docker build -t nginx:latest .
# docker run -it --name nginx -p 80:80 -v $PWD/web:/usr/share/nginx/html:ro -d nginx:latest
docker run -it --name nginx -p 80:80 -d nginx_local:latest

docker port nginx
docker ps
