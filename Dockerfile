FROM alpine

WORKDIR /tmp/go-vaddy

RUN wget --no-verbose https://github.com/vaddy/go-vaddy/archive/master.zip
RUN unzip master.zip
RUN mv go-vaddy-master/bin/vaddy-linux-64bit /usr/local/bin/vaddy

WORKDIR /

RUN rm -rf /tmp/go-vaddy

RUN apk add --no-cache --update ca-certificates

CMD ["vaddy"]
