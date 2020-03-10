FROM jupyter/base-notebook

# Copy conf file: set pwd: nb
COPY ./env /home/jovyan/.jupyter
WORKDIR /home/jovyan/.jupyter

# Update system
USER root
RUN sh apt_install.sh

# Switch back to jovyan: ARG NB_UID="1000"
USER $NB_UID

# Install python libraries
RUN sh pip_install.sh

EXPOSE 8888
