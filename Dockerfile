FROM alpine:latest

LABEL maintainer="Fabio Tea <iam@f4b.io>"

RUN apk update && apk upgrade
RUN apk add nano

CMD ["/bin/sh"]
