FROM alpine

WORKDIR /tmp/go-vaddy

RUN wget https://github.com/vaddy/go-vaddy/archive/master.zip
RUN unzip master.zip
RUN mv go-vaddy-master/bin/vaddy-linux-64bit /usr/local/bin/vaddy

CMD ["vaddy"]
