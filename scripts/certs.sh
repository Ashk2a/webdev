#!/bin/bash

SCRIPTS_DIR=$(dirname $0)

# Import colors
source ${SCRIPTS_DIR}/utils/colors.sh

# Compute MKCERT_BIN
source ${SCRIPTS_DIR}/utils/mkcert.sh

# Deploy CA to browsers
$MKCERT_BIN -install

# Generate SSL certificates with mkcert
$MKCERT_BIN -cert-file .docker/traefik/certs/local.pem -key-file .docker/traefik/certs/local-key.pem $(< domains.txt)

echo "${GREEN}SSL certificates generated !${NC}" >&2
