#!/bin/bash
echo "Iniciando corosync-qnetd escutando em: ${listen_address}"
exec /usr/sbin/corosync-qnetd -l "${listen_address}"