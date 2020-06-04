FROM alpine

RUN apk add --no-cache \
    rsync openssh \
    git \
    bash libxml2-utils zip

COPY extension_pack /usr/bin/extension_pack

RUN chmod 0755 /usr/bin/extension_pack
