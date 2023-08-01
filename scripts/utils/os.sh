case $(uname -s) in
    Linux*)             MACHINE=linux;;
    Darwin*)            MACHINE=darwin;;
    *)                  MACHINE="UNKNOWN"
esac

case $(uname -m) in
    x86_64)             ARCH=amd64;;
    aarch64)            ARCH=arm64;;
    arm*)               ARCH=arm64;;
    *)                  ARCH="UNKNOWN"
esac