FROM redhat:7.2.jdk7

COPY ./init /etc/init
WORKDIR /etc/init
RUN ./pre.sh

WORKDIR /home/weblogic
# RUN ./wls.sh

# After install by calling ./wls.sh
# WORKDIR /home/weblogic/Oracle/Middleware/user_projects/domains/base_domain

# CMD ["./startWeblogic.sh"]

# ENTRYPOINT ["./startWeblogic.sh"]

EXPOSE 7001
