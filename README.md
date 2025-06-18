# Proxmox QDevice Add-on

Este add-on executa o `corosync-qnetd` para fornecer quorum a clusters Proxmox com apenas dois nós físicos.

## Instalação

1. No Home Assistant OS, crie a pasta `/addons/proxmox_qdevice`.
2. Copie os arquivos deste repositório para ela.
3. No Supervisor, clique em “Recarregar” e instale o add-on.

## No Proxmox

```bash
pvecm qdevice setup <IP_DO_ADDON> --force
```

Aparecerá como um terceiro voto no cluster.
