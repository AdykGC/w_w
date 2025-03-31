# Use the official n8n image as a base
FROM n8nio/n8n:latest

# Set environment variables for basic auth and other configurations
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER="admin"
ENV N8N_BASIC_AUTH_PASSWORD="password"
ENV N8N_HOST="localhost"
ENV N8N_PORT=7676
ENV N8N_PROTOCOL="http"
ENV GENERIC_TIMEZONE="Europe/Moscow"

# Expose port for n8n web interface
EXPOSE 7676

# No need to modify the ENTRYPOINT, it already works with the default entrypoint from the base image


# docker build -t my-n8n .
# docker run -d -p 7676:7676 --name N8N-DCF my-n8n
# http://localhost:7676
# docker ps
# docker logs n8n-instance


#
#
#
#