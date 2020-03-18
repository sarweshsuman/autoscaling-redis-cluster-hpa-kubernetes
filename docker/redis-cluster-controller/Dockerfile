FROM alpine:latest

MAINTAINER Sarwesh Suman

RUN apk add bash \
    sed \
    git \
    go

RUN apk add --update redis

COPY redis.conf /redis.conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod 777 /entrypoint.sh

CMD [ "/entrypoint.sh" ]

ENTRYPOINT [ "bash", "-c" ]
