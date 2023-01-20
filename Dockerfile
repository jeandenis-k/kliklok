FROM ruby:3.2.0-alpine

RUN apk add --no-cache \
	bash \
	curl \
	git \
	openssh-client \
	tar \
	zip \
	build-base

WORKDIR /app
COPY . /app
