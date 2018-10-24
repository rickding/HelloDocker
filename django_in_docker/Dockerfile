FROM python:3

# copy files
COPY . /django_in_docker/
WORKDIR /django_in_docker/

# install
RUN ./pip_install.sh

# do sth
CMD ["./launch.sh"]

EXPOSE 8000
