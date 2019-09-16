# docker-alpine-mysql-python3.5-scientific

This project generates a Docker image based on Alpine with LLVM 7 and MySQL served by [larsklitzke/alpine-mysql-python3.5-llvm7](https://github.com/larsklitzke/docker-alpine-python3.5-llvm7) for Python 3.5 for data analysis. Therefore, it adds the following python packages:

* numpy
* scipy
* numba >=0.42.0
* pandas  >= 0.24.0
* matplotlib
* Pillow
* PyYAML

# Docker image
The latest version of the image is hosted on [Dockerhub](https://hub.docker.com/r/larsklitzke/alpine-mysql-python3.5-scientific). 

You can use the image in your project by pulling it from Dockerhub with

```bash

  docker pull larsklitzke/alpine-mysql-python3.5-scientific
  
```
