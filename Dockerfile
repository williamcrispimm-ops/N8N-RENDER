FROM n8nio/n8n:latest

# Força IPv4 para evitar erros de rede no Render
ENV NODE_OPTIONS="--dns-result-order=ipv4first"
ENV GENERIC_TIMEZONE="America/Sao_Paulo"

# Healthcheck (Render monitora o container)
HEALTHCHECK --interval=30s --timeout=5s --start-period=20s --retries=3 \
  CMD wget -qO- http://localhost:5678/healthz || exit 1

# Start: bind automático na porta do Render
CMD ["sh", "-c", "export N8N_PORT=${PORT:-5678}; n8n start"]
