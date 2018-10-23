FROM larsklitzke/mysql-python3.5
MAINTAINER Lars Klitzke <Lars.Klitzke@gmail.com>

# add scipy dependencies
RUN apk --no-cache add \
    openblas-dev

# install packages
RUN pip install --no-cache-dir -U\
    setuptools\
    numpy\
    pandas\
    scipy\
    matplotlib
