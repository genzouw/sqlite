FROM alpine:3.11.3

LABEL maintainer "genzouw <genzouw@gmail.com>"

RUN apk add \
  sqlite \
  && rm -f /var/cache/apk/* \
  ;

ENTRYPOINT ["sqlite3"]
