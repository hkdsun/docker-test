#!/bin/bash

set -e

function signal_handler() {
  echo 'received signal in sleep.sh, exiting'
  exit 0
}

trap signal_handler SIGTERM

ps auxf
echo sleeping
while :; do
  sleep 2
done
echo exiting
