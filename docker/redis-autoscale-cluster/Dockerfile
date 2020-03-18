FROM redis:latest

MAINTAINER Sarwesh Suman

RUN apt-get install bash \
    sed
    
COPY redis.conf /redis.conf
COPY entrypoint.sh /entrypoint.sh

RUN chmod 777 /entrypoint.sh

CMD [ "/entrypoint.sh" ]

ENTRYPOINT [ "bash", "-c" ]
