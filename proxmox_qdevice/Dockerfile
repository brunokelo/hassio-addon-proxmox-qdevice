FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y \
      corosync-qnetd \
      corosync-qdevice \
      iproute2 \
      net-tools \
      procps && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
