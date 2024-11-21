FROM debian:stretch
LABEL maintainer="Kusa Developers <dev@kusachain.com>"
LABEL description="Dockerised KusaCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
