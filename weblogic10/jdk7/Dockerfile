FROM zhiqzhao/ubuntu_weblogic1036_domain:latest

# install jdk7
COPY ./init /root/jdk
WORKDIR /root/jdk
RUN ./jdk.sh

# copy config to switch jdk7
COPY ./init/setDomainEnv.sh /root/Oracle/Middleware/user_projects/domains/base_domain/bin/
WORKDIR /root/Oracle/Middleware/user_projects/domains/base_domain

EXPOSE 7001 7002
