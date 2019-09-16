FROM larsklitzke/alpine-mysql-python3.5-llvm7:latest

MAINTAINER Lars Klitzke <Lars.Klitzke@gmail.com>

# add scipy dependencies
RUN apk --no-cache add \
    openblas-dev

# install packages
RUN pip install --no-cache-dir -U\
    setuptools\
    numpy

RUN pip install --no-cache-dir -U\
    numba>=0.42.0\
    pandas>=0.24.0\
    scipy\
    matplotlib\
    Pillow\
    pyyaml
