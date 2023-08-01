# Get operating system information
source ${SCRIPTS_DIR}/utils/os.sh

MKCERT_BIN="bin/mkcert-$MACHINE-$ARCH"

if [ ! -f $MKCERT_BIN ]; then
    echo "No mkcert binary found for $MACHINE $ARCH" >&2
    exit 1
fi