FROM alpine:3.12

RUN apk add --no-cache busybox busybox-extras curl iptables wget bind-tools
