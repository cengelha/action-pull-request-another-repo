FROM alpine:3.19.1

RUN apk update && \
    apk upgrade && \
    apk add git && \
    apk add rsync && \
    apk add github-cli

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
