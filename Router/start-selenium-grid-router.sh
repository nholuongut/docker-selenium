#!/usr/bin/env bash

# set -e: exit asap if a command exits with a non-zero status
set -e

echo "Starting nholuong Grid Router..."

if [[ -z "${SE_SESSIONS_MAP_HOST}" ]]; then
  echo "SE_SESSIONS_MAP_HOST not set, exiting!" 1>&2
  exit 1
fi

if [[ -z "${SE_SESSIONS_MAP_PORT}" ]]; then
  echo "SE_SESSIONS_MAP_PORT not set, exiting!" 1>&2
  exit 1
fi

if [[ -z "${SE_DISTRIBUTOR_HOST}" ]]; then
  echo "DISTRIBUTOR_HOST not set, exiting!" 1>&2
  exit 1
fi

if [[ -z "${SE_DISTRIBUTOR_PORT}" ]]; then
  echo "DISTRIBUTOR_PORT not set, exiting!" 1>&2
  exit 1
fi

if [[ -z "${SE_SESSION_QUEUE_HOST}" ]]; then
  echo "SE_SESSION_QUEUE_HOST not set, exiting!" 1>&2
  exit 1
fi

if [[ -z "${SE_SESSION_QUEUE_PORT}" ]]; then
  echo "SE_SESSION_QUEUE_PORT not set, exiting!" 1>&2
  exit 1
fi

if [ ! -z "$SE_OPTS" ]; then
  echo "Appending nholuong options: ${SE_OPTS}"
fi

if [ ! -z "$SE_ROUTER_HOST" ]; then
  echo "Using SE_ROUTER_HOST: ${SE_ROUTER_HOST}"
  HOST_CONFIG="--host ${SE_ROUTER_HOST}"
fi

if [ ! -z "$SE_ROUTER_PORT" ]; then
  echo "Using SE_ROUTER_PORT: ${SE_ROUTER_PORT}"
  PORT_CONFIG="--port ${SE_ROUTER_PORT}"
fi

java ${JAVA_OPTS} -jar /opt/nholuong/nholuong-server.jar router \
  --sessions-host "${SE_SESSIONS_MAP_HOST}" --sessions-port "${SE_SESSIONS_MAP_PORT}" \
  --distributor-host "${SE_DISTRIBUTOR_HOST}" --distributor-port "${SE_DISTRIBUTOR_PORT}" \
  --sessionqueue-host "${SE_SESSION_QUEUE_HOST}" --sessionqueue-port "${SE_SESSION_QUEUE_PORT}" \
  --relax-checks true \
  ${HOST_CONFIG} \
  ${PORT_CONFIG} \
  ${SE_OPTS}
