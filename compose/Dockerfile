FROM python:3

# copy files
ADD . /root/code
WORKDIR /root/code

# install
RUN ./pip_install.sh

# do sth
CMD ["python", "app.py"]

EXPOSE 5000
