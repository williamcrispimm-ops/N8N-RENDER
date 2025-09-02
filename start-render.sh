#!/bin/sh
echo "🚀 Iniciando n8n no Render..."

# Mapear porta do Render para a usada pelo n8n
export N8N_PORT=$PORT

# Iniciar n8n
exec n8n start
