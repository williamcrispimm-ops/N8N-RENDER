# Imagem oficial do n8n
FROM n8nio/n8n:latest

# utilitário para healthcheck
USER root
RUN apk add --no-cache curl
USER node

# Script de inicialização que mapeia N8N_PORT = $PORT do Render
COPY start-render.sh /start-render.sh
RUN chmod +x /start-render.sh

# Variáveis padrão (serão sobrescritas no Render)
ENV N8N_HOST=0.0.0.0 \
    N8N_PROTOCOL=https \
    # O Render define PORT em runtime; o script seta N8N_PORT=$PORT
    N8N_PORT=5678 \
    TZ=America/Sao_Paulo

# Healthcheck interno (usa $PORT ou 5678 se não definido)
HEALTHCHECK --interval=30s --timeout=5s --retries=5 CMD \
  sh -c 'curl -fsS "http://127.0.0.1:${PORT:-5678}/healthz" >/dev/null || exit 1'

# Inicia via nosso script (não altere aqui; ajuste envs no painel do Render)
CMD ["/start-render.sh"]
