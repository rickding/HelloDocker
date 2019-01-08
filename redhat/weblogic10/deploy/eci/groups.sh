#!/bin/bash

aliyun eci DescribeContainerGroups \
  --RegionId cn-shanghai \
  | grep --color -i -e weblogic10 -e ContainerGroupId -e ip
