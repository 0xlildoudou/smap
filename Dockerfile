FROM golang:latest

LABEL version="1.0"

RUN go install -v github.com/s0md3v/smap/cmd/smap@latest

RUN mkdir /data

ENTRYPOINT [ "smap" ]