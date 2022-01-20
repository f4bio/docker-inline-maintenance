FROM alpine:latest

LABEL maintainer="Fabio Tea <iam@f4b.io>"
LABEL version="0.0.3"

ENV EDITOR=/bin/nano

ARG ADDITIONAL_PACKAGES="vim"

RUN apk update \
	&& apk upgrade \
	&& apk add \
		nano \
		bash \
		rsync \
		fish \
		${ADDITIONAL_PACKAGES}

CMD ["/usr/bin/fish"]
