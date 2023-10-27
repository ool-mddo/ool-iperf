FROM networkstatic/iperf3
RUN apt-get update
RUN apt install -y iproute2  inetutils-ping traceroute
RUN echo "#!/bin/bash\n \
ip route del default dev eth0\n \
ip route add default dev eth1" >> ./start.sh
RUN chmod +x start.sh
ENTRYPOINT ["/bin/sh"]
