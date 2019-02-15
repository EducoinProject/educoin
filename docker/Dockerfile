FROM debian:stretch
LABEL maintainer="Educoin Developers <dev@educoin.org>"
LABEL description="Dockerised EducoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
