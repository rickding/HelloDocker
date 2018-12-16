#!/bin/bash

docker login --username=xxx registry.cn-shanghai.aliyuncs.com

docker tag ac089f3e69b0 registry.cn-shanghai.aliyuncs.com/ddsrv/api:181216R1
docker push registry.cn-shanghai.aliyuncs.com/ddsrv/api:181216R1

docker pull registry.cn-shanghai.aliyuncs.com/ddsrv/api:181216R1
