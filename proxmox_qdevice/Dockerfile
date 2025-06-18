FROM ubuntu:22.04

RUN apt-get update && apt-get install -y \
    corosync-qnetd \
    corosync-qdevice \
    iproute2 \
    net-tools \
    procps \
    openssh-server && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Cria diretório do SSH
RUN mkdir -p /var/run/sshd /root/.ssh

# Copia chave pública autorizada
COPY ssh/authorized_keys /root/.ssh/authorized_keys
RUN chmod 600 /root/.ssh/authorized_keys && chown root:root /root/.ssh/authorized_keys

# Copia configuração fixa do SSH
COPY sshd_config /etc/ssh/sshd_config

# Copia opcional: configuração do qnetd (se existir)
COPY qnetd.conf /etc/corosync/qnetd/qnetd.conf

# Copia script de inicialização
COPY run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 2222

CMD ["/run.sh"]
