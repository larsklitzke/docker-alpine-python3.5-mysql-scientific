FROM larsklitzke/mysql-python3.5
MAINTAINER Lars Klitzke <Lars.Klitzke@gmail.com>

# add scipy dependencies
RUN apk --no-cache add \
    openblas-dev\
    cmake

# install llvm in version 7.x for numba
RUN wget http://releases.llvm.org/7.0.1/llvm-7.0.1.src.tar.xz && tar xvf llvm-7.0.1.src.tar.xz

RUN cd llvm-7.0.1.src && mkdir build && cd build && cmake .. \
    -G "Unix Makefiles" -DLLVM_TARGETS_TO_BUILD="X86" \
    -DCMAKE_BUILD_TYPE=MinSizeRel

RUN cd llvm-7.0.1.src/build && ls -l && make -j && make install

# install packages
RUN pip install --no-cache-dir -U\
    setuptools\
    numpy
#
RUN pip install --no-cache-dir -U\
    numba==0.42.0\
    pandas\
    scipy\
    matplotlib\
    Pillow\
    pyyaml
