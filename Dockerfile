FROM centurylink/ca-certs
MAINTAINER John Chadwick <john.chadwick@benzinga.com>

ENV DOMAIN localhost
ENV PROXY_ADDR localhost:80

ADD caddy caddy
ADD Caddyfile Caddyfile

EXPOSE 443
ENTRYPOINT ["/caddy"]
