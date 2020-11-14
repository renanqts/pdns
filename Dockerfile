FROM arm64v8/alpine:3.12
LABEL maintainer="Renan Rodrigues <renanqts@gmail.com>" architecture="ARM64/aarch64"

ARG PDNS_VERSION=4.2.3-r0

RUN apk add pdns=$PDNS_VERSION pdns-backend-mysql=$PDNS_VERSION
RUN rm -f /etc/pdns/pdns.conf

ENTRYPOINT ["pdns_server"]
