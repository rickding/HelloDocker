#!/bin/bash

# ./build.sh
# ./login.sh

# img:tag repo:tag namespace server
set weblogic10_jdk7:latest weblogic10_jdk7:latest hellodock registry.cn-shanghai.aliyuncs.com

docker rmi $4/$3/$2
docker tag $1 $4/$3/$2
docker push $4/$3/$2
