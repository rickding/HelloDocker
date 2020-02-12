#!/bin/bash

docker-compose logs -ft | grep --color -i -e error -e warn -e version -e exception
