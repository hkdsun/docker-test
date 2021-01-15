#!/bin/bash

sigquit()
{
   echo "signal QUIT received"
   exit 0
}

sigint()
{
   echo "signal INT received, script ending"
   exit 0
}

trap 'sigquit' QUIT
trap 'sigint'  INT
trap ':'       HUP      # ignore the specified signals

echo "test script started. My PID is $$"
while /usr/bin/true ; do
  sleep 2
done
