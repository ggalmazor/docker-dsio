FROM golang:alpine

WORKDIR /go/src/app

RUN apk update && apk upgrade && \
    apk add --no-cache --virtual .build-deps bash git openssh && \
    go get -u github.com/nshmura/dsio && \
    apk del .build-deps && \
    mkdir /workdir

ENV DSIO_KEY_FILE=/workdir/keys.json
VOLUME ["/workdir"]

ENTRYPOINT ["/go/bin/dsio"]
