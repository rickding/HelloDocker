FROM python:3

WORKDIR /usr/src/app

# copy files
COPY . /root/
WORKDIR /root/

# install
RUN ./pip_install.sh

# launch service
CMD ["python", "hello.py"]
