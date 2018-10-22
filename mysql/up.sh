#!/bin/bash
clear

docker-compose down

# compose
docker-compose up -d

docker-compose ps
