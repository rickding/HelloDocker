#!/bin/bash

# https://help.aliyun.com/document_detail/91333.html
# aliyun help eci CreateContainerGroup

aliyun eci CreateContainerGroup \
  --ContainerGroupName jira \
  --RegionId cn-shanghai \
  --ZoneId cn-shanghai-a \
  --SecurityGroupId sg-uf60ng4pfttd9glnod58 \
  --VSwitchId vsw-uf69vfkf55j079f22k0zr \
  --RestartPolicy Always \
  --EipInstanceId eip-uf6cjehv5imosbwd5kkwq \
  --Container.1.Name jira \
  --Container.1.Image registry-vpc.cn-shanghai.aliyuncs.com/hellodock/jira:7.12.3 \
  --Container.1.ImagePullPolicy IfNotPresent \
  --Container.1.Cpu 2 \
  --Container.1.Memory 8 \
  --Container.1.Port.1.Protocol TCP \
  --Container.1.Port.1.Port 8080 \
