#!/bin/bash
set -e

# Usa a variável de ambiente SSH_PASSWORD para configurar a senha root
if [ -z "$SSH_PASSWORD" ]; then
  echo "⚠️ Variável SSH_PASSWORD não definida, usando senha padrão 'changeme'"
  echo "root:changeme" | chpasswd
else
  echo "Configurando senha root via variável SSH_PASSWORD"
  echo "root:${SSH_PASSWORD}" | chpasswd
fi

echo "Iniciando SSHD"
/usr/sbin/sshd

echo "Iniciando corosync-qnetd escutando em: ${LISTEN_ADDRESS:-0.0.0.0}"
exec /usr/bin/corosync-qnetd -l "${LISTEN_ADDRESS:-0.0.0.0}"
