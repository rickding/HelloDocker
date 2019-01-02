FROM yjjy0921/redhat7.2:latest
# FROM wjp719/redhat6.5:latest

WORKDIR /etc

# wget
COPY ./wget.sh wget-1.20.tar.gz /etc/
# RUN wget | ./wget.sh

# update yum & repo
COPY ./yum.sh /etc/yum.sh
# RUN ./yum.sh

# CMD $PWD

ENTRYPOINT ls -al ./

EXPOSE 22
