#!/usr/bin/env -S just --justfile

set positional-arguments

# Default recipe to display help information
default:
  @just --list

# Setup all necessary dependencies
check:
  ./scripts/check.sh

# Re(generate) SSL certifcates
certs:
  ./scripts/certs.sh

# Interact with mkcert binary
mkcert *args='':
    ./scripts/mkcert.sh $@

# Up containers
@up *args='':
    just check
    just certs
    docker-compose up $@

# Restart containers
@restart *args='':
    just check
    just certs
    docker-compose restart $@

# Docker compose
@dc *args='':
    docker-compose $@
