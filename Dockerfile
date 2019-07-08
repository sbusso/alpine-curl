FROM alpine:3.8

LABEL author="stephane.busso@gmail.com"

RUN apk add --no-cache curl
CMD ["/bin/sh", "-c", "/usr/bin/curl ${VAR1} --connect-timeout 30 -o - 2>/dev/null | grep ${VAR2} || echo 'Failed' && exit 1"]
