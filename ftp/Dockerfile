FROM openjdk:8

# copy files
COPY ./target/ftp-1.0-SNAPSHOT.jar ./readme.md /usr/ftp/
WORKDIR /usr/ftp/

# launch
CMD ["java", "-jar ftp-1.0-SNAPSHOT.jar"]
