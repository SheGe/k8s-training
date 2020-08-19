#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

if [ -z ${ELASTIC_USERNAME} ]; then
  echo "Elasticsearch user cannot be empty."
  exit -1
fi

if [ -z ${ELASTIC_PASSWORD} ]; then
  echo "Elasticsearch user password cannot be empty."
  exit -1
fi

function update_user () {
  if ! grep -q "^${ELASTIC_USERNAME}:.*$" ./config/users ; then
    ./bin/elasticsearch-users useradd ${ELASTIC_USERNAME} -p ${ELASTIC_PASSWORD}
  fi

  ./bin/elasticsearch-users roles -a superuser ${ELASTIC_USERNAME}
  ./bin/elasticsearch-users passwd ${ELASTIC_USERNAME} -p ${ELASTIC_PASSWORD}
}

update_user

exec "$@"