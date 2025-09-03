# Usar a imagem oficial do n8n (repositório n8nio)
FROM n8nio/n8n:latest

# Forçar IPv4 no Render e timezone
ENV NODE_OPTIONS="--dns-result-order=ipv4first"
ENV GENERIC_TIMEZONE="America/Sao_Paulo"

# Healthcheck opcional
HEALTHCHECK --interval=30s --timeout=5s --start-period=20s --retries=3 \
  CMD wget -qO- http://localhost:5678/healthz || exit 1

# Iniciar o n8n (não use bash/sh)
CMD ["n8n", "start"]
