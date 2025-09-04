# Usa a imagem oficial do n8n
FROM n8nio/n8n:latest

# Define o diretório de trabalho
WORKDIR /data

# Define permissões (opcional, mas evita warnings)
USER root
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n
USER node

# Porta que o n8n escutará
EXPOSE 5678

# Comando de inicialização
CMD ["n8n"]
