#!/bin/bash

SCRIPTS_DIR=$(dirname $0)

# Get operating system information
source ${SCRIPTS_DIR}/utils/os.sh

# Import colors
source ${SCRIPTS_DIR}/utils/colors.sh

# Setup domains.txt
source ${SCRIPTS_DIR}/setup/domains.sh

# Source .env
source .env >/dev/null 2>&1

# Setup docker
source ${SCRIPTS_DIR}/setup/docker.sh

echo "${GREEN}Check done !${NC}" >&2
