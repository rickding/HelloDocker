#!/bin/bash

docker stop rabbit
docker rm rabbit

docker stop rabbit_mgr
docker rm rabbit_mgr

docker ps
