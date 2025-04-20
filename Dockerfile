FROM n8nio/n8n:latest

# Creem la carpeta .n8n i li donem permisos correctes
RUN mkdir -p /home/node/.n8n && chown node:node /home/node/.n8n

# Activem autenticació bàsica
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin
ENV WEBHOOK_URL=https://n8n-railway-production-7f44.up.railway.app/
EXPOSE 5678


