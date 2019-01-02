FROM yjjy0921/redhat7.2:latest

# install jdk7
COPY ./jdk.sh /root/jdk
WORKDIR /root/jdk
RUN ./jdk.sh

# copy config to switch jdk7
COPY ./setDomainEnv.sh /root/Oracle/Middleware/user_projects/domains/base_domain/bin/
WORKDIR /root/Oracle/Middleware/user_projects/domains/base_domain

EXPOSE 7001 7002
