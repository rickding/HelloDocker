FROM python:2


# copy files
COPY . /django_in_docker/
WORKDIR /django_in_docker/


# install
RUN ./pip_install.sh


# service
CMD ["python", "manage.py", "runserver", "8000"]
