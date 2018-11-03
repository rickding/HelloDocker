FROM openjdk:8

# copy files
COPY . /usr/java/
WORKDIR /usr/java/

# compile
RUN javac Hello.java

# launch
CMD ["java", "Hello"]
