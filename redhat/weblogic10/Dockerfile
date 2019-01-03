# FROM redhat:6.5.11.jdk7
FROM registry.cn-shanghai.aliyuncs.com/hellodock/redhat:6.5.11.jdk7

COPY ./init /etc/init
WORKDIR /etc/init
RUN ./pre.sh

WORKDIR /home/weblogic
# RUN ./wls.sh

# After install by calling ./wls.sh
# WORKDIR /home/weblogic/Oracle/Middleware/user_projects/domains/base_domain

# CMD ["./startWebLogic.sh"]

# ENTRYPOINT ["./startWebLogic.sh"]

EXPOSE 7001
