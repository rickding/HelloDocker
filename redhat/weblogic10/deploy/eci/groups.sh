#!/bin/bash

aliyun eci DescribeContainerGroups \
  --RegionId cn-shanghai \
  | grep --color -i -e weblogic -e ContainerGroupId -e ip
