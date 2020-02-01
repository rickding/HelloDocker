#!/bin/bash

# ./build.sh
# ./login.sh

# img:tag repo:tag namespace server
set logstash:7.5.2 logstash:7.5.2 hellodock registry.cn-shanghai.aliyuncs.com

# workaround on windows: prefix command with winpty
# docker login --username=xxx $4

docker rmi $4/$3/$2
docker tag $1 $4/$3/$2
docker push $4/$3/$2
