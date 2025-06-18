#!/bin/bash

LISTEN_ADDRESS=${LISTEN_ADDRESS:-"0.0.0.0"}

echo "Iniciando corosync-qnetd escutando em: $LISTEN_ADDRESS"

exec /usr/sbin/corosync-qnetd -f -l $LISTEN_ADDRESS
