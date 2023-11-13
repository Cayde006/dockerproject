FROM alpine:latest
VOLUME [ "/tmp/vault" ]
ENV VAULT_VERSION=1.15.2
RUN apk add --no-cache wget && \
    wget https://releases.hashicorp.com/vault/${VAULT_VERSION}/vault_${VAULT_VERSION}_linux_amd64.zip && \
    unzip vault_${VAULT_VERSION}_linux_amd64.zip && \
    mv vault /usr/local/bin/ && \
    rm vault_${VAULT_VERSION}_linux_amd64.zip

RUN mkdir /vault-data

ENV VAULT_ADDR=http://127.0.0.1:8200
ENV VAULT_API_ADDR=http://127.0.0.1:8200
ENV VAULT_LOG_LEVEL=info
ENV VAULT_DEV_ROOT_TOKEN_ID=network
ENV VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:8200
ENV VAULT_DEV_LISTEN_PORT=8200
ENV VAULT_UI=true

EXPOSE 8200
CMD ["vault", "server", "-dev", "-dev-root-token-id=network", "-dev-listen-address=0.0.0.0:8200"]