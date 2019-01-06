#!/bin/bash

# ./build.sh
# ./login.sh

# img:tag repo:tag namespace server
# set redhat:7.2.jdk7 redhat:7.2.jdk7 hellodock registry.cn-shanghai.aliyuncs.com
set redhat:6.5.11.jdk7 redhat:6.5.11.jdk7 hellodock registry.cn-shanghai.aliyuncs.com

# workaround on windows: prefix command with winpty
# docker login --username=xxx $4

docker rmi $4/$3/$2
docker tag $1 $4/$3/$2
docker push $4/$3/$2
