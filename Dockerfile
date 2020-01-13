# Version 1.0

FROM python:3.6

# copy files
COPY ./python/ /
COPY ./run.sh /

WORKDIR /

# install requirements
RUN ./pip_install.sh

# launch service
CMD ["sh", "run.sh"]
