FROM bash:3.2
ENV SHELL=/usr/local/bin/bash
RUN mkdir /workdir \
    && apk add --no-cache entr git jq less ncurses python py-pygments py-yaml go musl-dev \
    && GOBIN=/usr/local/bin go get -v github.com/bronze1man/yaml2json \
    && rm -rf /root/go && apk del go musl-dev
WORKDIR /workdir

