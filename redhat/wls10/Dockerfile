FROM redhat:7.2.jdk7

COPY ./init /etc/init
WORKDIR /etc/init

# RUN ./wls.sh

# WORKDIR /home/weblogic/Oracle/Middleware/user_projects/domains/base_domain

# CMD ["./startWeblogic.sh"]

ENTRYPOINT ["./version.sh"]

EXPOSE 7001
