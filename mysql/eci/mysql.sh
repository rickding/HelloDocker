#!/bin/bash

# https://help.aliyun.com/document_detail/91333.html
# aliyun help eci CreateContainerGroup

aliyun eci CreateContainerGroup \
  --ContainerGroupName mysql \
  --RegionId cn-shanghai \
  --ZoneId cn-shanghai-a \
  --SecurityGroupId sg-uf68tmr3yb0o23x94b74 \
  --VSwitchId vsw-uf69vfkf55j079f22k0zr \
  --RestartPolicy Always \
  --Container.1.Name mysql \
  --Container.1.Image registry-vpc.cn-shanghai.aliyuncs.com/hellodock/mysql:5 \
  --Container.1.ImagePullPolicy IfNotPresent \
  --Container.1.Cpu 2 \
  --Container.1.Memory 8 \
  --Container.1.Port.1.Protocol TCP \
  --Container.1.Port.1.Port 3306 \
  --Container.1.EnvironmentVar.1.Key MYSQL_DATABASE \
  --Container.1.EnvironmentVar.1.Value test \
  --Container.1.EnvironmentVar.2.Key MYSQL_ROOT_PASSWORD \
  --Container.1.EnvironmentVar.2.Value root \
