FROM alpine:3.18

LABEL maintainer="Ashk"

# Install dnsmasq
RUN apk add --no-cache --update dnsmasq

ENTRYPOINT ["dnsmasq", "--keep-in-foreground", "--user=root"]