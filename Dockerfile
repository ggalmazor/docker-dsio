FROM golang:alpine3.8

WORKDIR /go/src/app
COPY . .

RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh && \
    go get -u github.com/nshmura/dsio && \
    mkdir /workdir

ENV DSIO_KEY_FILE=/workdir/keys.json
VOLUME ["/workdir"]

ENTRYPOINT ["/go/bin/dsio"]
