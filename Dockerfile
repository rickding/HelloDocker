# Version 1.0

FROM python:3.6

# copy files
COPY ./python/ /tcdata/
COPY ./run.sh /tcdata/

WORKDIR /tcdata/

# install
RUN ./pip_install.sh

# launch service
CMD ["sh", "run.sh"]
