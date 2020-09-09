FROM alpine:latest

LABEL maintainer="Fabio Tea <iam@f4b.io>"

ENV EDITOR=/bin/nano

RUN apk update && apk upgrade
RUN apk add \
	nano \
	bash fish

CMD ["/usr/bin/fish"]
