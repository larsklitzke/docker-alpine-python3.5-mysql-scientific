FROM larsklitzke/alpine-python3.5-llvm7-mysql
MAINTAINER Lars Klitzke <Lars.Klitzke@gmail.com>

# add scipy and Pillow build dependencies
RUN apk --no-cache add \
    openblas-dev \
    jpeg-dev \
    zlib-dev

# install packages; install numpy before numba because numba depends on it
RUN pip install --no-cache-dir -U\
    setuptools\
    numpy

RUN pip install --no-cache-dir -U\
    numba

RUN pip install --no-cache-dir -U\
    pandas\
    scipy\
    scikit-learn

RUN pip install --no-cache-dir -U\
    matplotlib

RUN pip install --no-cache-dir -U\
    Pillow

RUN pip install --no-cache-dir -U\
    pyyaml
