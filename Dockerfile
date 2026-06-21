FROM alpine:3.24.1

LABEL org.opencontainers.image.authors="genzouw <genzouw@gmail.com>"

RUN apk add --no-cache \
  sqlite \
  && addgroup -g 1000 -S sqlite \
  && adduser -D -u 1000 -S -G sqlite sqlite \
  && mkdir -p /data \
  && chown sqlite:sqlite /data \
  ;

WORKDIR /data

USER sqlite

ENTRYPOINT ["sqlite3"]
