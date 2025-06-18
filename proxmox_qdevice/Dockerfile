FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    corosync-qnetd \
    corosync-qdevice \
    iproute2 \
    net-tools \
    procps \
    openssh-server && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

RUN mkdir /var/run/sshd

# Permite login root via chave pública
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin prohibit-password/' /etc/ssh/sshd_config

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
