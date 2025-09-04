# Miguel - n8n no Render com PostgreSQL (Neon) e Webhook do Telegram

Este projeto configura o n8n rodando no Render, conectado a um banco de dados PostgreSQL hospedado no Neon, com suporte a Webhooks para integração via Telegram.

---

## 🚀 Tecnologias

- [n8n](https://n8n.io) - Plataforma de automações
- [Render](https://render.com) - Hospedagem gratuita (Free Plan)
- [Neon](https://neon.tech) - Banco de dados PostgreSQL moderno (serverless)
- [Telegram Bot API](https://core.telegram.org/bots/api)

---

## 🛠 Variáveis de Ambiente

Adicione essas variáveis no painel do Render:

| Variável                      | Valor                                                                 |
|------------------------------|-----------------------------------------------------------------------|
| DB_TYPE                    | postgres                                                           |
| DB_POSTGRESDB_HOST         | ep-wandering-frost-acjqgsb7-pooler.sa-east-1.aws.neon.tech         |
| DB_POSTGRESDB_PORT         | 5432                                                               |
| DB_POSTGRESDB_DATABASE     | miguel_                                                            |
| DB_POSTGRESDB_USER         | neondb_owner                                                       |
| DB_POSTGRESDB_PASSWORD     | Defina manualmente no painel (não no YAML)                         |
| DB_POSTGRESDB_SSL_REJECT_UNAUTHORIZED | false                                                    |
| N8N_PORT                   | 5678                                                               |
| N8N_PROTOCOL               | https                                                              |
| N8N_HOST                   | miguel-n8n-g4ya.onrender.com                                       |
| WEBHOOK_URL                | https://miguel-n8n-g4ya.onrender.com                               |
| GENERIC_TIMEZONE           | America/Sao_Paulo                                                  |
| TZ                         | America/Sao_Paulo                                                  |
| EXECUTIONS_MODE            | queue                                                              |
| QUEUE_MODE                 | redis (opcional se for configurar fila com Redis depois)         |

---

## 📦 Deploy

1. Clone o repositório:

   ```bash
   git clone https://github.com/seu-usuario/seu-repo-n8n.git
   cd seu-repo-n8n
