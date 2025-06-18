#!/bin/bash

echo "🟢 Iniciando SSH na porta 2222..."
/usr/sbin/sshd

echo "📡 Iniciando corosync-qnetd em 0.0.0.0..."
/usr/bin/corosync-qnetd -l 0.0.0.0
