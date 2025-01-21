FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/greenpau/caddy-security@v1.1.29

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
