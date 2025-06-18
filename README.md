# Proxmox QDevice Add-on for Home Assistant

Addon para rodar o serviço **corosync-qnetd** para quorum do cluster Proxmox, com acesso SSH configurável via chave pública, diretamente na rede principal do host (host_network).

---

## Versão

**1.0.5**

---

## Funcionalidades

- Serviço `corosync-qnetd` rodando no container para auxiliar quorum Proxmox  
- SSH configurável via chave pública (sem senha)  
- Porta SSH configurável (default: 2222)  
- Usa rede do host para comunicação direta (`host_network: true`)  
- Privilegios para manipulação da rede (`NET_ADMIN`, `SYS_ADMIN`)  

---

## Configuração

### Opções configuráveis no Home Assistant Add-on:

- `listen_address`: IP onde o `corosync-qnetd` vai escutar (padrão `0.0.0.0`)  
- `ssh_public_key`: Sua chave pública SSH para login root sem senha  
- `ssh_port`: Porta TCP para SSH (padrão `2222`)  

---

## Como usar

1. Adicione o repositório no Home Assistant:

2. Instale o add-on.

3. Configure as opções (especialmente `ssh_public_key` e `ssh_port` se quiser mudar).

4. Inicie o add-on.

5. No Proxmox, rode o comando para configurar o qdevice:

```bash
pvecm qdevice setup "root@IP_DO_ADDON:ssh_port"


