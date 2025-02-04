#!/usr/bin/env bash

# set -e: exit asap if a command exits with a non-zero status
set -e

echo "Starting nholuong Grid Standalone Docker..."

if [ ! -z "$SE_OPTS" ]; then
  echo "Appending nholuong options: ${SE_OPTS}"
fi

java ${JAVA_OPTS} -jar /opt/nholuong/nholuong-server.jar standalone \
  --relax-checks ${SE_RELAX_CHECKS} \
  --detect-drivers false \
  --config /opt/bin/config.toml \
  ${SE_OPTS}
