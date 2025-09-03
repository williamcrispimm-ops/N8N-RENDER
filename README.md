# Miguel n8n (Render + Supabase)

Este repositório contém a configuração para rodar o n8n no *Render, persistindo workflows e credenciais no **Supabase/Postgres*.

## Deploy

1. Configure as variáveis no Render ou edite o .env.
2. Certifique-se de criar o schema no Supabase (se não usar public):
   ```sql
   create schema if not exists n8n;
   grant usage, create on schema n8n to postgres;
