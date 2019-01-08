#!/bin/bash

aliyun eci DescribeContainerGroups \
  --RegionId cn-shanghai \
  | grep --color -i -e mysql5 -e ContainerGroupId -e ip
