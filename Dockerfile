FROM n8nio/n8n:latest

COPY start-render.sh /start-render.sh

RUN chmod 755 /start-render.sh

ENTRYPOINT ["/start-render.sh"]