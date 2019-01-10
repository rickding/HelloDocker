# FROM yjjy0921/redhat7.2:latest
# FROM wjp719/redhat6.5:latest
# FROM redhat:6.5.11
FROM registry.cn-shanghai.aliyuncs.com/hellodock/redhat:6.5.11

COPY ./init /etc/init
COPY ./init/profile /etc/profile
WORKDIR /etc/init

RUN ./jdk1.7.0_80.sh
# RUN ./jdk1.7.0_121.sh

CMD ["./version.sh"]

# ENTRYPOINT ["./version.sh"]

# EXPOSE 22
