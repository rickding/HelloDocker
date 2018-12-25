#!/bin/bash

docker-compose logs -f -t | grep ERROR
