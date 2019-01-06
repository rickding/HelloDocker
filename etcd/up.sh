#!/bin/bash

./build.sh
./down.sh

# compose
docker-compose up -d
docker-compose ps

# docker exec -it etcd_etcd_1 bash
docker exec etcd_etcd_1 /bin/sh -c "/usr/local/bin/etcd --version"
docker exec etcd_etcd_1 /bin/sh -c "ETCDCTL_API=3 /usr/local/bin/etcdctl version"
docker exec etcd_etcd_1 /bin/sh -c "ETCDCTL_API=3 /usr/local/bin/etcdctl endpoint health"
docker exec etcd_etcd_1 /bin/sh -c "ETCDCTL_API=3 /usr/local/bin/etcdctl put foo bar"
docker exec etcd_etcd_1 /bin/sh -c "ETCDCTL_API=3 /usr/local/bin/etcdctl get foo"

./logs.sh
