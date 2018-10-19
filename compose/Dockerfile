FROM python:3

# copy files
ADD . /code
WORKDIR /code

# install
RUN ./pip_install.sh

CMD ["python", "app.py"]
