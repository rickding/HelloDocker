#!/bin/bash

# https://help.aliyun.com/document_detail/91333.html
# aliyun help eci CreateContainerGroup

aliyun eci CreateContainerGroup \
  --ContainerGroupName weblogic \
  --RegionId cn-shanghai \
  --ZoneId cn-shanghai-a \
  --SecurityGroupId sg-uf6f775x5cf6xgzl2zod \
  --VSwitchId vsw-uf69vfkf55j079f22k0zr \
  --RestartPolicy Always \
  --EipInstanceId eip-uf6cjehv5imosbwd5kkwq \
  --Container.1.Name weblogic10 \
  --Container.1.Image registry-vpc.cn-shanghai.aliyuncs.com/hellodock/redhat:6.5.11.wls10.jdk7 \
  --Container.1.ImagePullPolicy IfNotPresent \
  --Container.1.Cpu 4 \
  --Container.1.Memory 16 \
  --Container.1.Port.1.Protocol TCP \
  --Container.1.Port.1.Port 7001 \
  --Container.1.WorkingDir /home/weblogic/Oracle/Middleware/user_projects/domains/base_domain \
  --Container.1.Command.1 ./startWebLogic.sh \
