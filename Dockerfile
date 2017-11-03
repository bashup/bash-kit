FROM bash:3.2
ENV SHELL=/usr/local/bin/bash
RUN mkdir /workdir \
    && apk add --no-cache entr git less ncurses python py-pygments
WORKDIR /workdir

