# docker-mysql-python3.5-scientific

This project generates a Docker image, that is based on the image [larsklitzke/mysql-python3.5](https://github.com/larsklitzke/docker-mysql-python3.5)
which contains a mysql-client and python in version 3.5, for data analysis. Therefore, it adds the following python 
packages:

* numpy
* scipy
* numba
* pandas
* matplotlib
* Pillow
* PyYAML

# Docker image
The latest version of the image is hosted on [Dockerhub](https://hub.docker.com/r/larsklitzke/mysql-python3.5-scientific/). 

You can use the image in your project by pulling it from Dockerhub with

```bash

  docker pull larsklitzke/mysql-python3.5-scientific
  
```
