#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

. /opt/example/log.sh

log "Welcome in entrypoint."

sleep 5

exec "$@"
