FROM n8nio/n8n:latest

# Força IPv4 para evitar erros de rede no Render
ENV NODE_OPTIONS="--dns-result-order=ipv4first"
ENV GENERIC_TIMEZONE="America/Sao_Paulo"

# Healthcheck para o Render monitorar
HEALTHCHECK --interval=30s --timeout=5s --start-period=20s --retries=3 \
  CMD wget -qO- http://localhost:${PORT:-5678}/healthz || exit 1
