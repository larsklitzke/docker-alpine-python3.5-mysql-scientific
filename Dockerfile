# use the latest mysql version
FROM larsklitzke/mysql-python3.5
MAINTAINER Lars Klitzke <Lars.Klitzke@gmail.com>

RUN pip install --no-cache-dir -U\
    setuptools\
    numpy\
    scipy\
    pandas\
    matplotlib
