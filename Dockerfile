FROM certbot/certbot
LABEL org.opencontainers.image.source=https://github.com/Bluestep-Systems/certbot-kubectl
LABEL org.opencontainers.image.description="Certbot with kubectl"

RUN apk update && \
    apk add --no-cache postgresql-client bash curl && \
    curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && \
    mv ./kubectl /usr/local/bin