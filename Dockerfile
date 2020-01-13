FROM python:3

# copy files
COPY ./python/ /tcdata/
COPY ./run.sh /tcdata/
WORKDIR /tcdata/

# install
RUN ./pip_install.sh

# launch service
CMD ["python", "hello.py"]
