# Dockerized Python 3.5 with scientific Python packages

This project generates a Docker image based on Alpine with LLVM 7 and MySQL served by 
[larsklitzke/alpine-python3.5-llvm7-mysql](https://github.com/larsklitzke/alpine-python3.5-llvm7-mysql) for Python 3.5 for data analysis. 
Therefore, it adds the following python packages:

* numpy
* scipy
* scikit-learn
* numba
* pandas
* matplotlib
* Pillow
* PyYAML


# Docker image
The latest version of the image is hosted on [Dockerhub](https://hub.docker.com/r/larsklitzke/alpine-mysql-python3.5-scientific). 

You can use the image in your project by pulling it from Dockerhub with

```bash

  docker pull larsklitzke/alpine-mysql-python3.5-scientific
  
```
