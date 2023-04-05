FROM alpine:latest

LABEL maintainer="Fabio Tea <iam@f4b.io>"
LABEL version="0.0.5"

ENV EDITOR=/usr/bin/neovim

ARG ADDITIONAL_PACKAGES="nmap"

RUN apk update \
	&& apk upgrade \
	&& apk add \
		nano \
		neovim \
		bash \
		zsh \
		rsync \
		${ADDITIONAL_PACKAGES}

CMD ["/bin/zsh"]
