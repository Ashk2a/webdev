DOCKER_COMPOSE="docker compose"
NETWORK_NAME=proxy

# Ensure that docker is running
if ! docker info > /dev/null 2>&1; then
    echo "Docker is not running." >&2
    exit 1
fi

# Reverse proxy external network
if [ -z $(docker network ls --filter name=^${NETWORK_NAME}$ --format="{{ .Name }}") ] ; then
     docker network create ${NETWORK_NAME} ;
fi