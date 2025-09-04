# Usa a imagem oficial do n8n
FROM n8nio/n8n:latest

# Porta que o n8n escutará
EXPOSE 5678

# Comando de inicialização
CMD ["n8n"]
