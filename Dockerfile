FROM alpine:3.12

RUN apk add --no-cache busybox busybox-extras curl iptables wget bind-tools openssl

RUN curl -L -o /tmp/grpcurl.tar.gz https://github.com/fullstorydev/grpcurl/releases/download/v1.7.0/grpcurl_1.7.0_linux_x86_64.tar.gz \
	&& cd /tmp \
	&& tar xf grpcurl.tar.gz \ 
	&& mv grpcurl /usr/bin/grpcurl \
	&& rm -rf /tmp/*
