# FROM gcr.io/etcd-development/etcd:v3.3.10
FROM quay.io/coreos/etcd:v3.3.10
# FROM registry.cn-shanghai.aliyuncs.com/hellodock/etcd:3.3.10

COPY ./launch.sh /usr/local/bin/launch.sh
WORKDIR /usr/local/bin

VOLUME ["/etcd-data"]
CMD ["etcd --version"]

EXPOSE 2380 2379
