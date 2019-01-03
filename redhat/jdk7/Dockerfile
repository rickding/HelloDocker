FROM yjjy0921/redhat7.2:latest
# FROM wjp719/redhat6.5:latest

COPY ./init /etc/init
WORKDIR /etc/init

RUN ./jdk.sh

# JAVA_HOME
COPY ./init/profile /etc/profile
RUN source /etc/profile

# CMD ["./version.sh"]

ENTRYPOINT ["./version.sh"]

# EXPOSE 22
