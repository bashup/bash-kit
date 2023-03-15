ARG BASH_VER=3.2
ARG OS_VER=3.14
FROM bash:$BASH_VER-alpine$OS_VER
COPY --from=ghcr.io/bashup/alpine-tools:latest /bin/* /usr/bin/

ENV SHELL=/usr/local/bin/bash
RUN mkdir /workdir \
    && apk add --no-cache entr git less ncurses php7 python2 py-pygments \
    	py-yaml go musl-dev coreutils \
    && ln -s /usr/bin/php7 /usr/local/bin/php

WORKDIR /workdir

