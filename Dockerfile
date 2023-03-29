FROM alpine:latest

LABEL maintainer="Fabio Tea <iam@f4b.io>"
LABEL version="0.0.4"

ENV EDITOR=/usr/bin/neovim

ARG ADDITIONAL_PACKAGES="vim"

RUN apk update \
	&& apk upgrade \
	&& apk add \
		nano \
		neovim \
		bash \
		zsh \
		rsync \
		${ADDITIONAL_PACKAGES}

CMD ["/usr/bin/zsh"]
