FROM python:3

# copy files
COPY . /root/django_in_docker/
WORKDIR /root/django_in_docker/

# install
RUN ./pip_install.sh

# do sth
CMD ["./launch.sh"]

EXPOSE 8000
