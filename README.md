# miguel-n8n (Render)

Instância única do n8n para o projeto Miguel, rodando no Render, com dados persistentes no *Supabase Postgres*.

## Deploy
1. Conecte este repositório no Render como *Web Service* (env: Docker).
2. O Render vai buildar usando o Dockerfile e aplicar envs do render.yaml.
3. Crie os *Secrets* no Render (as chaves marcadas sync: false):
   - N8N_BASIC_AUTH_PASSWORD
   - N8N_ENCRYPTION_KEY
   - DB_POSTGRESDB_HOST
   - DB_POSTGRESDB_DATABASE
   - DB_POSTGRESDB_USER
   - DB_POSTGRESDB_PASSWORD
   - (opcional) WEBHOOK_URL

## Testes rápidos
- Health: GET /healthz
- Editor: abra a URL do serviço no Render e faça login com BASIC_AUTH.
