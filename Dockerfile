FROM camparra/ubuntu16.04-rocksdb

ARG li_ver=1.10.1
ARG lc_ver=0.4.5

USER root

RUN apt-get update -y && apt-get install -y \
    apt-transport-https \
    ca-certificates

RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 68DB5E88

RUN echo "deb https://repo.sovrin.org/sdk/deb xenial stable" >> /etc/apt/sources.list

WORKDIR /usr/src/indy

COPY test_genesis /usr/src/indy
COPY live_genesis /usr/src/indy

RUN apt-get update -y && apt-get install -y \
    emacs \
    libindy=${li_ver} \
    indy-cli
