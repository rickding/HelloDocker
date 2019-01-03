#!/bin/bash

docker logs redhat -f -t | grep --color -i -e error -e warn -e version
