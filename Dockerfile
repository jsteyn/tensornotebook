FROM lspvic/tensorboard-notebook

LABEL maintainer="jannetta.steyn@newcatle.ac.uk"

USER root
RUN apt-get update
RUN apt-get upgrade -y
USER jovyan
RUN python -m pip install torch torchvision opencv-python
COPY jupyter_notebook_config.py /home/jovyan/.jupyter

