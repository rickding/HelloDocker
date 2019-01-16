#!/bin/bash

aliyun eci DescribeContainerLog \
  --RegionId cn-shanghai \
  --ContainerGroupId eci-uf6h2ttatlv1e9fo6qr9 \
  --ContainerName jira \
  --Tail \
  | grep --color -i -e error -e warn -e version
