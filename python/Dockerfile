FROM python:3.6

LABEL maintainer="Jext Community, https://github.com/rickding/HelloDocker"

# copy files
COPY ./ /
COPY ./run.sh /

WORKDIR /

# install requirements
RUN ./pip_install.sh

# launch service
CMD ["sh", "run.sh"]
