#!/bin/bash
clear

docker-compose down

# compose
docker-compose up -d --scale redis=2

docker-compose ps
