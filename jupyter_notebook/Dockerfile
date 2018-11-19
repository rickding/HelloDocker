FROM jupyter/base-notebook

# Copy conf file: set pwd: nb
COPY ./conf /home/jovyan/.jupyter
WORKDIR /home/jovyan/.jupyter

# Install
USER root
RUN ./apt_install.sh && ./pip_install.sh

# Switch back to jovyan: ARG NB_UID="1000"
USER $NB_UID

EXPOSE 8888
