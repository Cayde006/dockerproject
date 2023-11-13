#!/bin/bash
curl \
    --header "X-Vault-Token:network" \
    --request POST \
    --data @payloadsetup.json \
    https://127.0.0.1:8200/v1/secret/data/test
