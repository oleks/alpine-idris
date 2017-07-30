# A Docker image running Idris, based on Alpine Linux

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](LICENSE.md)

## Usage

This [Docker](https://www.docker.com) image serves to make
[Idris](https://www.idris-lang.org) more accessible. As such, having Docker
installed, you can whip up an Idris prompt merely as follows:

    $ docker run -i oleks2/alpine-idris

This is also a minimal image (due to using [alpine
linux](https://alpinelinux.org)), so it may be suitable for the automated,
lightweight testing of your Idris projects.

## Versioning

The Docker image tag has the format `<Idris version>_<image version>`, where
the image version is reset to `0.0` for each new version of Idris. For
instance, `1.0_0.5` stands for version 0.5 of the Docker image for Idris 1.0.
The image version follows the usual semantic versioning conventions.
