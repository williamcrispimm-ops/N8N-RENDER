#!/bin/sh
echo "🚀 Iniciando n8n no Render..."

# Mapear porta do Render -> n8n
export N8N_PORT=${PORT}

# Subir n8n
n8n start
