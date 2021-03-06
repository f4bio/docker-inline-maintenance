FROM alpine:latest

LABEL maintainer="Fabio Tea <iam@f4b.io>"
LABEL version="0.0.2"

ENV EDITOR=/bin/nano

RUN apk update && apk upgrade
RUN apk add \
	nano \
	bash \
	fish \
	rsync

CMD ["/usr/bin/fish"]
