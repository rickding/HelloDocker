#!/bin/bash

# ./build.sh
# ./login.sh

# img:tag repo:tag namespace server
# set redhat:7.2.jdk7 redhat:7.2.jdk7 hellodock registry.cn-shanghai.aliyuncs.com
set redhat:6.5.jdk7 redhat:6.5.jdk7 hellodock registry.cn-shanghai.aliyuncs.com

docker rmi $4/$3/$2
docker tag $1 $4/$3/$2
docker push $4/$3/$2
