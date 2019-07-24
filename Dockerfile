FROM mlafeldt/ps3dev

MAINTAINER Ben Baron <ben@einsteinx2.com>

RUN git clone https://github.com/einsteinx2/tiny3D.git /tiny3D \
    && cd /tiny3D \
    && set -x; make > /dev/null 2>&1

WORKDIR /src
CMD ["/bin/bash"]
