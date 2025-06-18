#!/bin/bash
set -e

# Porta SSH customizável, padrão 2222
SSH_PORT="${SSH_PORT:-2222}"

# Ajusta sshd para rodar na porta configurada
sed -i "s/^#Port 22/Port $SSH_PORT/" /etc/ssh/sshd_config

if [ -n "$SSH_PUBLIC_KEY" ]; then
  mkdir -p /root/.ssh
  echo "$SSH_PUBLIC_KEY" > /root/.ssh/authorized_keys
  chmod 700 /root/.ssh
  chmod 600 /root/.ssh/authorized_keys
  echo "Chave pública SSH configurada."
else
  echo "⚠️ Nenhuma chave pública SSH configurada!"
fi

echo "Iniciando SSHD na porta $SSH_PORT"
/usr/sbin/sshd

echo "Iniciando corosync-qnetd escutando em: ${LISTEN_ADDRESS:-0.0.0.0}"
exec /usr/bin/corosync-qnetd -l "${LISTEN_ADDRESS:-0.0.0.0}"
