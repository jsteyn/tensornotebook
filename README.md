# Jupyter Notebook Scientific Python Stack + Tensorflow + Tensorboard + PyTorch

This image is based on lspvic/tensorboard-notebook but PyTorch has also been installed

Tensorboard is started in Jupyter notebook with the password set to `tensorflow`. The docker can thus be run as a daemon without additional steps to configure the password. This is obviously not secure and is aimed at personal on you personal computer and not on a production server.

Usage
---
Pull the `tensornotebook` docker image and start a container:

```
docker pull jannetta/tensornotebook
docker run --rm -d -p 8888:8888 --name tensornotebook -v tensornotebook:/home/jovyan/work -d tensornotebook:1.0
```

The docker run command will start jupyter notebook which can then be accessed via web browser at http://localhost:8888. The minus -v parameter creates a docker volume called tensornotebook to make the data directory persistent. The --rm command makes the container ephemeral, i.e. it will be deleted when it is stopped, but because of the volume, the files saved will be persistent. The -d parameter ensures that the container keeps running as a daemon. To stop the container the stop command needs to be used:

```
docker stop tensornotebook
```
