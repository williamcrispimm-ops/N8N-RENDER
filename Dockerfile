# imagem oficial do n8n (pode fixar a versão que você quiser)
FROM n8nio/n8n:latest

# preferir IPv4 no DNS (evita ENETUNREACH)
ENV NODE_OPTIONS="--dns-result-order=ipv4first"
# timezone padrão
ENV GENERIC_TIMEZONE="America/Sao_Paulo"

# healthcheck que o Render entende
HEALTHCHECK --interval=30s --timeout=5s --start-period=20s --retries=3 \
  CMD wget -qO- http://localhost:5678/healthz || exit 1

# (PULO DO GATO) inicia o n8n já bindando na porta dinâmica do Render
CMD ["bash","-lc","export N8N_PORT=${PORT:-5678}; n8n start"]
