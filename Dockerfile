ARG BASH_VER=3.2
FROM bashitup/alpine-tools as tools

FROM bash:$BASH_VER
COPY --from=tools /bin/* /usr/bin/

ENV SHELL=/usr/local/bin/bash
RUN mkdir /workdir \
    && apk add --no-cache entr git jq less ncurses php5 php5-cli python py-pygments py-yaml go musl-dev \
    && ln -s /usr/bin/php5 /usr/local/bin/php

WORKDIR /workdir

