FROM alpine

WORKDIR /tmp/go-vaddy

RUN wget --no-verbose https://github.com/vaddy/go-vaddy/archive/v1.0.6.zip
RUN unzip v1.0.6.zip
RUN mv go-vaddy-1.0.6/bin/vaddy-linux-64bit /usr/local/bin/vaddy

WORKDIR /

RUN rm -rf /tmp/go-vaddy

RUN apk add --no-cache --update ca-certificates

CMD ["vaddy"]
