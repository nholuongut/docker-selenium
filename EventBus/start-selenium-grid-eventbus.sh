#!/usr/bin/env bash

# set -e: exit asap if a command exits with a non-zero status
set -e

echo "Starting nholuong Grid EventBus..."

if [ ! -z "$SE_EVENT_BUS_HOST" ]; then
  echo "Using SE_EVENT_BUS_HOST: ${SE_EVENT_BUS_HOST}"
  HOST_CONFIG="--host ${SE_EVENT_BUS_HOST}"
fi

if [ ! -z "$SE_EVENT_BUS_PORT" ]; then
  echo "Using SE_EVENT_BUS_PORT: ${SE_EVENT_BUS_PORT}"
  PORT_CONFIG="--port ${SE_EVENT_BUS_PORT}"
fi

if [ ! -z "$SE_OPTS" ]; then
  echo "Appending nholuong options: ${SE_OPTS}"
fi

java ${JAVA_OPTS} -jar /opt/nholuong/nholuong-server.jar event-bus \
  ${HOST_CONFIG} \
  ${PORT_CONFIG} \
  ${SE_OPTS}
