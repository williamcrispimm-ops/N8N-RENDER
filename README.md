# n8n no Render

Este repositório contém a configuração mínima para rodar o n8n no Render usando Docker.

## Deploy

1. Faça fork ou clone deste repositório.
2. No Render, crie um **Web Service** e aponte para este repositório.
3. Ele detectará automaticamente o Dockerfile.
4. Configure as variáveis de ambiente (exemplo no `.env.example`).
5. Se quiser persistência, crie um **Disk** no Render e monte em `/home/node/.n8n`.

## Healthcheck
Configure no Render:
- Liveness: `/healthz`
- Readiness: `/healthz/readiness`
