FROM alpine:3.11.3

LABEL maintainer "genzouw <genzouw@gmail.com>"

RUN apk add \
  sqlite \
  && rm -f /var/cache/apk/* \
  && addgroup -g 1000 -S sqlite \
  && adduser -D -u 1000 -S -G sqlite sqlite \
  && mkdir -p /data \
  && chown sqlite:sqlite /data \
  ;

WORKDIR /data

USER sqlite

ENTRYPOINT ["sqlite3"]
