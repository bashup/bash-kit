FROM bash:3.2
ENV SHELL=/usr/local/bin/bash
RUN mkdir /workdir \
    && apk add --no-cache entr git jq less ncurses php5 php5-cli python py-pygments py-yaml go musl-dev \
    && ln -s /usr/bin/php5 /usr/local/bin/php \
    && GOBIN=/usr/local/bin go get -v github.com/bronze1man/yaml2json \
    && rm -rf /root/go && apk del go musl-dev
WORKDIR /workdir

