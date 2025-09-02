# Usar imagem oficial do n8n
FROM n8nio/n8n:latest

# Copiar script de inicialização
COPY start-render.sh /usr/local/bin/start-render.sh

# Garantir permissões de execução (removendo problemas de quebra de linha Windows CRLF)
RUN chmod 755 /usr/local/bin/start-render.sh \
    && sed -i 's/\r$//' /usr/local/bin/start-render.sh

# Rodar o script de inicialização
CMD ["/usr/local/bin/start-render.sh"]
