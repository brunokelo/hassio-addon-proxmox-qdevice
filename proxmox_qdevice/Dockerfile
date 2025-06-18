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

# Permite login root via senha
RUN sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Altera sshd para escutar na porta 2222
RUN sed -i 's/#Port 22/Port 2222/' /etc/ssh/sshd_config

COPY run.sh /run.sh
RUN chmod +x /run.sh

CMD ["/run.sh"]
