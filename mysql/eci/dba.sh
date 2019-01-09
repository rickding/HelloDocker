#!/bin/bash

# https://help.aliyun.com/document_detail/91333.html
# aliyun help eci CreateContainerGroup

aliyun eci CreateContainerGroup \
  --ContainerGroupName dba \
  --RegionId cn-shanghai \
  --ZoneId cn-shanghai-a \
  --SecurityGroupId sg-uf6gg87ra0fuxsxeonre \
  --VSwitchId vsw-uf69vfkf55j079f22k0zr \
  --RestartPolicy Always \
  --Container.1.Name admin \
  --Container.1.Image registry-vpc.cn-shanghai.aliyuncs.com/hellodock/mysql:admin \
  --Container.1.ImagePullPolicy IfNotPresent \
  --Container.1.Cpu 0.5 \
  --Container.1.Memory 1 \
  --Container.1.Port.1.Protocol TCP \
  --Container.1.Port.1.Port 8080 \
