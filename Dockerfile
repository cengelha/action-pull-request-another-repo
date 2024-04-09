FROM alpine:3.19.1

RUN apk update && \
    apk upgrade && \
    apk add git && \
    apk add github-cli && \
    apk add jq && \
    apk add rsync

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
