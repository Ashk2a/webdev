#!/bin/bash

SCRIPTS_DIR=$(dirname $0)

# Import colors
source ${SCRIPTS_DIR}/utils/colors.sh

# Compute MKCERT_BIN
source ${SCRIPTS_DIR}/utils/mkcert.sh

$MKCERT_BIN "$@"