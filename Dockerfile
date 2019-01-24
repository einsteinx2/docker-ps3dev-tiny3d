FROM mlafeldt/ps3dev

MAINTAINER Ben Baron <einsteinx2@gmail.com>

RUN git clone git://github.com/einsteinx2/tiny3D /tiny3D \
    && cd /tiny3D \
    && make

WORKDIR /src
CMD ["/bin/bash"]