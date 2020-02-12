FROM prom/prometheus:latest

LABEL maintainer="Jext Community, https://github.com/rickding/HelloDocker"

# config
COPY ./prometheus.yml /etc/prometheus/prometheus.yml
COPY ./rules/ /etc/prometheus/

EXPOSE 9090
