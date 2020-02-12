FROM prom/alertmanager:latest

LABEL maintainer="Jext Community, https://github.com/rickding/HelloDocker"

# config
COPY ./alertmanager.yml /etc/alertmanager/
COPY ./template /etc/alertmanager/

EXPOSE 9093
