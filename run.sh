#!/bin/bash

set -e

function signal_handler() {
  echo 'received signal in run.sh, exiting'
  exit 0
}

trap 'signal_handler' TERM

ps auxf
sleep 10
echo "execing sleep.sh"

exec /sleep.sh
