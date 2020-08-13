FROM lspvic/tensorboard-notebook

LABEL maintainer="jannetta.steyn@newcatle.ac.uk"

USER root
RUN apt-get update
RUN apt-get upgrade -y
RUN pip install torch torchvision
USER jovyan
COPY jupyter_notebook_config.py /home/jovyan/.jupyter

