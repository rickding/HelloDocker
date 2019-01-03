# FROM yjjy0921/redhat7.2:latest
FROM registry.access.redhat.com/rhel6/rhel:6.5-11
# FROM wjp719/redhat6.5:latest
# FROM inventx/redhat-openjdk-18:latest

COPY ./init /etc/init
WORKDIR /etc/init

# wget
# RUN wget | ./wget.sh

# update yum & repo
# RUN ./yum.sh

CMD ["./version.sh"]

# ENTRYPOINT ["./version.sh"]

# EXPOSE 22
