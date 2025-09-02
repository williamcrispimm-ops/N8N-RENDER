#!/bin/sh
set -e

echo "🚀 Iniciando n8n no Render..."

export N8N_PORT=${PORT:-5678}
export N8N_PROTOCOL=${N8N_PROTOCOL:-https}
export N8N_HOST=${N8N_HOST:-localhost}

exec n8n start
