#!/bin/bash

# ./build.sh
./down.sh

# compose
docker-compose up -d
docker-compose ps

# docker-compose logs -f
# docker exec -it deploy_jira_1 bash
