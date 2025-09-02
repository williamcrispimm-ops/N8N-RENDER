# Usar imagem oficial do n8n
FROM n8nio/n8n:latest

# Copiar script de inicialização
COPY start-render.sh /start-render.sh

# Garantir permissões
RUN chmod 755 /start-render.sh

# Rodar o script de inicialização
CMD ["/start-render.sh"]
