#!/bin/sh
# Script para inicializar o n8n no Render

# Garante que o Render use a porta correta
export N8N_PORT=$PORT

# Inicia o n8n
n8n start
