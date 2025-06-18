#!/bin/bash
set -x
echo "Iniciando corosync-qnetd escutando em: ${listen_address:-0.0.0.0}"
/usr/bin/corosync-qnetd -l "${listen_address:-0.0.0.0}"