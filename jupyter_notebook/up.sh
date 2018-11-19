#!/bin/bash

./build.sh
./down.sh

# compose
docker-compose up -d
docker-compose ps

# alias dcmp=docker-compose && dcmp logs -f
docker exec -it jupyter_notebook_nb_1 bash -c "jupyter notebook list"
# docker exec -it -u root tf_nb_1 bash

# docker container diff tf_nb_1
