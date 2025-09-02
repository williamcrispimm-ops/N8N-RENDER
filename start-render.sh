#!/bin/sh

echo "🚀 Iniciando N8N no Render..."

# Mapear a porta do Render para a porta usada pelo N8N
export N8N_PORT=$PORT

# Rodar o n8n
n8n start
