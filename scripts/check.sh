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

# For mac need to create resolver in /etc/resolver for all TLD
if [ "$MACHINE" == "darwin" ]; then
    source ${SCRIPTS_DIR}/setup/darwin/tld.sh
fi

# Setup docker
source ${SCRIPTS_DIR}/setup/docker.sh

echo "${GREEN}Check done !${NC}" >&2
