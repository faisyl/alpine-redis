#!/bin/sh
set -e

ARGS="--port $REDIS_PORT --daemonize no"

if [ -n "$REDIS_PASSWD" ]; then
  ARGS="$ARGS --requirepass $REDIS_PASSWD"
fi

exec /usr/bin/redis-server $ARGS
