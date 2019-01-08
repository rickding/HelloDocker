#!/bin/bash

aliyun eci DescribeContainerGroups \
  --RegionId cn-shanghai \
  | grep --color -i -e mysql -e ContainerGroupId -e ip
