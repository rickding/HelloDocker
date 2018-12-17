#!/bin/bash

docker stack rm srv

docker node ls
docker stack ls
docker service ls
docker ps
