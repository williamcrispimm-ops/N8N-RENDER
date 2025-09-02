# Usar a imagem oficial do n8n
FROM n8nio/n8n:latest

# (opcional) define a porta padrão que o n8n escuta
ENV N8N_PORT=5678

# Comando padrão para iniciar o n8n
CMD ["n8n", "start"]
