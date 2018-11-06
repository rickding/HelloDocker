#!/usr/bin/env bash

./mysql/run.sh

sleep 10s
./django_in_docker/run.sh
