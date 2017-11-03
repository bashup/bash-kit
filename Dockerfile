FROM bash:3.2
ENV SHELL=/usr/local/bin/bash
RUN mkdir /workdir \
    && apk add --no-cache entr git jq less ncurses python py-pygments py-yaml
WORKDIR /workdir

