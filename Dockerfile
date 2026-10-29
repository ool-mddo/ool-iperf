FROM debian:trixie-slim

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      iperf3 \
      iproute2 \
      inetutils-ping \
      traceroute \
      procps \
      curl \
      dnsmasq \
      bind9-dnsutils \
      nginx \
      apache2-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

EXPOSE 53/udp 53/tcp 80/tcp 5201/tcp 5201/udp

ENTRYPOINT ["/bin/sh"]
