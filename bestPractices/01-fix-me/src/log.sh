#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

function log () {
  echo "[LOG]: $1"
}

function print-log () {
  cat $LOG_FILE
}