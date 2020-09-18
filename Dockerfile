FROM alpine:3.11

COPY script/ca-certificates.crt /etc/ssl/certs/
COPY dist/traefik /

COPY entrypoint.sh /
EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]
CMD ["traefik"]

# Metadata
LABEL org.opencontainers.image.vendor="Containous" \
	org.opencontainers.image.url="https://traefik.io" \
	org.opencontainers.image.title="Traefik" \
	org.opencontainers.image.description="A modern reverse-proxy" \
	org.opencontainers.image.version="v2.3-ecma" \
	org.opencontainers.image.documentation="https://docs.traefik.io"