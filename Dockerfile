FROM alpine:3.11
COPY script/ca-certificates.crt /etc/ssl/certs/
COPY dist/traefik /usr/local/bin/
EXPOSE 80
VOLUME ["/tmp"]
ENTRYPOINT ["traefik"]