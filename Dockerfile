# Usar a imagem oficial do n8n
FROM n8nio/n8n:latest

# Copiar o script de inicialização
COPY start-render.sh /usr/local/bin/start-render.sh

# Garantir permissões e formato correto de fim de linha
RUN chmod 755 /usr/local/bin/start-render.sh \
    && sed -i 's/\r$//' /usr/local/bin/start-render.sh

# Rodar o script de inicialização
CMD ["/usr/local/bin/start-render.sh"]
