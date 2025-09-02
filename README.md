# miguel-n8n (Render)

Instância única do n8n para o projeto Miguel, rodando no Render com disco persistente.

## Deploy pelo Git

1. Clone este repositório.
2. No Render, crie um **Web Service** selecionando este repo.
3. O Render detectará o `render.yaml` e criará o serviço automaticamente.

## Variáveis/Secrets
Defina no painel do Render os secrets listados em `.env.example`:

- `N8N_BASIC_AUTH_PASSWORD`
- `N8N_ENCRYPTION_KEY`
- `DB_POSTGRESDB_PASSWORD`

## Volume persistente
O serviço monta um disco em `/home/node/.n8n`. Nele ficam **credenciais** e **workflows**.
Assim, ao atualizar para versões novas do n8n (`latest`), seus dados permanecem.

## Webhooks
No n8n crie dois workflows:
- `POST /webhook/sync` (para sistema/admin)
- `POST /webhook/export` (para usuário/relatórios)

O **Core (Northflank)** encaminha mensagens para essas rotas. Durante 02h–07h, o Core armazena no R2 e depois faz flush.

## Segurança
- Mantenha `N8N_BASIC_AUTH_ACTIVE=true` com usuário/senha fortes.
- Use sempre HTTPS (Render já fornece automaticamente).