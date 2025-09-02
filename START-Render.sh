#!/usr/bin/env bash
set -e

# Se o Render fornecer PORT, usamos como porta do n8n
export N8N_PORT="${PORT:-5678}"

# Garante diretório de dados (persistir no Render Disk montado em /home/node/.n8n)
mkdir -p /home/node/.n8n
chown -R node:node /home/node/.n8n

# Sobe o n8n (entrypoint oficial cuida do resto)
exec /docker-entrypoint.sh n8n
