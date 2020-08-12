FROM lspvic/tensorboard-notebook
USER root
RUN apt-get update
RUN apt-get upgrade -y
RUN pip install torch
USER jovyan
COPY jupyter_notebook_config.py /home/jovyan/.jupyter

