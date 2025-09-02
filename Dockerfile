# Usar imagem oficial do n8n
FROM n8nio/n8n:latest

# Copiar script de inicialização já com permissão de execução
COPY --chmod=755 start-render.sh /start-render.sh

# Rodar o script de inicialização
CMD ["/start-render.sh"]
