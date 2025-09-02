# Usar imagem oficial do n8n
FROM n8nio/n8n:latest

# Diretório onde o Render vai montar o disco persistente
VOLUME ["/home/node/.n8n"]

# Comando padrão para iniciar o n8n
CMD ["n8n"]
