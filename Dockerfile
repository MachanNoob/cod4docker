FROM alpine:latest
MAINTAINER "Johan Rydström" <johan.rydstrom@gmail.com>

#from http://cod4-linux-server.webs.com/
RUN apk add --no-cache libgcc libstdc++ zlib && rm -rf /var/cache/apk/*

RUN addgroup cod4
RUN adduser -D -G cod4 cod4
ADD cod4 /home/cod4
RUN chown -R cod4:cod4 /home/cod4

EXPOSE 28960

USER cod4
WORKDIR /home/cod4
ENTRYPOINT /home/cod4/cod4_lnxded +exec server.cfg +map_rotate
