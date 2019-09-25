FROM alpine:latest

ARG FIVEM_VER=1387-893803f3921511bed298a54e95a2ba7df5860f7c
ENV FIVEM_VER=$FIVEM_VER

RUN apk add --no-cache ca-certificates curl
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/${FIVEM_VER}/fx.tar.xz | tar xJ -C /srv

WORKDIR /srv

EXPOSE 30120/tcp 30120/udp

COPY logo.png /srv/

ENTRYPOINT ["sh", "/srv/run.sh"]
CMD ["+exec", "/srv/server.cfg"]
