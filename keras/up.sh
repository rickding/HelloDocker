#!/bin/bash

./down.sh

# compose
docker-compose up -d
docker-compose ps

# alias dcmp=docker-compose && dcmp logs -f
docker exec -it keras_nb_1 bash -c "jupyter notebook list"
