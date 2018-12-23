#!/bin/bash

# ./build.sh
# ./login.sh

# img:tag repo:tag namespace server
set jira:7.12.3 jira:7.12.3 hellodock registry.cn-shanghai.aliyuncs.com

docker tag $1 $4/$3/$2
docker push $4/$3/$2

# docker rmi $4/$3/$2
# docker pull $4/$3/$2
