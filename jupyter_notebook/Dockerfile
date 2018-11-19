FROM jupyter/base-notebook

# Copy conf file: set pwd: nb
COPY ./ /home/jovyan/.jupyter
WORKDIR /home/jovyan/.jupyter

# Install
RUN ./pip_install.sh

EXPOSE 8888
