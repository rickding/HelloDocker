FROM python:3

# copy files
COPY . /root/python/
WORKDIR /root/python/

# install
RUN ./pip_install.sh

# launch service
CMD ["python", "hello.py"]
