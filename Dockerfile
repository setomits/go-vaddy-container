FROM alpine

RUN wget https://github.com/vaddy/go-vaddy/archive/v1.0.3.tar.gz
RUN tar zxvf v1.0.3.tar.gz
RUN mv go-vaddy-1.0.3/bin/vaddy-linux-64bit /usr/local/bin/vaddy

CMD ["vaddy"]
