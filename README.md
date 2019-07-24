Docker image based off of https://github.com/mlafeldt/docker-ps3dev with tiny3D added from https://github.com/einsteinx2/tiny3D

# A Docker Image for PS3 Development

[![](https://images.microbadger.com/badges/image/einsteinx2/ps3dev-tiny3d.svg)](https://microbadger.com/images/einsteinx2/ps3dev-tiny3d)
[![](https://img.shields.io/docker/pulls/einsteinx2/ps3dev-tiny3d.svg?maxAge=604800)](https://hub.docker.com/r/einsteinx2/ps3dev-tiny3d/)

Cross-compile your PS3 homebrew projects inside a Docker container based on
[ps3toolchain](https://github.com/ps3dev/ps3toolchain).

## Quick Start

Run this command in your project's root folder to build it inside a Docker
container:

```bash
docker run -it --rm -v "$PWD:/src" einsteinx2/ps3dev-tiny3d make
```

This will mount the current folder to `/src` in the container and then run
`make` inside `/src`. You may execute other commands, of course.

Omit the command to get a login shell (`/bin/bash`) in the running container:

```bash
docker run -it --rm -v "$PWD:/src" einsteinx2/ps3dev-tiny3d
```

For a working example, use the Docker image to build the
[PSL1GHT samples](https://github.com/ps3dev/PSL1GHT/tree/master/samples).

## Continuous Integration

With the Docker image in hand, you can also build and test your PS3 applications
on CI platforms. Here's an example configuration for Travis CI:

```yaml
# .travis.yml
language: c

sudo: required

services:
  - docker

script: docker run -it --rm -v "$PWD:/src" einsteinx2/ps3dev-tiny3d make test
```

## Author

This project is being developed by [Mathias Lafeldt](https://twitter.com/mlafeldt).

He also created a [Docker image for PS2 development](https://github.com/mlafeldt/docker-ps2dev).

I just added tiny3D to his image
