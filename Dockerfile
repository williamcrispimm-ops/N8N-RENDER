FROM n8nio/n8n:latest

# Força IPv4 para evitar erros de rede no Render
ENV NODE_OPTIONS="--dns-result-order=ipv4first"
ENV GENERIC_TIMEZONE="America/Sao_Paulo"
