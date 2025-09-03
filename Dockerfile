FROM n8nio/n8n:latest

# Render costuma ser IPv4-only; isso evita preferir IPv6.
ENV NODE_OPTIONS="--dns-result-order=ipv4first"
ENV GENERIC_TIMEZONE="America/Sao_Paulo"

# Healthcheck simples (não toca no DB)
HEALTHCHECK --interval=30s --timeout=5s --start-period=20s --retries=3 \
  CMD wget -qO- http://localhost:5678/healthz || exit 1

# Iniciar ajustando a porta do n8n para a porta do Render
CMD ["/bin/sh","-lc","export N8N_PORT=${PORT:-5678}; n8n start"]
