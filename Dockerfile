FROM networkstatic/iperf3
RUN apt-get update
RUN apt install -y iproute2  inetutils-ping traceroute
ENTRYPOINT ["/bin/sh"]
