#!/bin/bash

docker pull docs/docker.github.io:latest
docker pull dockersamples/visualizer:stable

docker pull redis:4
docker pull registry.cn-shanghai.aliyuncs.com/hellodock/compose:latest
