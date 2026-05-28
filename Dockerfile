FROM alpine:3.11.3

LABEL maintainer "genzouw <genzouw@gmail.com>"

RUN apk add \
  sqlite \
  && rm -f /var/cache/apk/* \
  && addgroup -g 1000 -S sqlite \
  && adduser -u 1000 -S -G sqlite sqlite \
  ;

USER sqlite

ENTRYPOINT ["sqlite3"]
