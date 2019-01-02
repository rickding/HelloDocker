FROM yjjy0921/redhat7.2:latest
# FROM wjp719/redhat6.5:latest

# install jdk7
COPY ./jdk.sh /usr/java/jdk.sh
WORKDIR /usr/java

RUN ./jdk.sh

# CMD $PWD

ENTRYPOINT java -version

EXPOSE 22
