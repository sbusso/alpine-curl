FROM alpine:3.8

LABEL author="stephane.busso@gmail.com"

RUN apk add --no-cache curl
CMD ["/bin/sh", "-c", "/usr/bin/curl ${SITE} --connect-timeout 30 -L -o - 2>/dev/null | grep \"${CONTENT}\""]
