FROM tomcat:8

# copy files
COPY ./chk /usr/local/tomcat/webapps/chk
COPY ./war.war /usr/local/tomcat/webapps
COPY ./web.war /usr/local/tomcat/webapps

WORKDIR /usr/local/tomcat

EXPOSE 8080
