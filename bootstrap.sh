#!/bin/bash

if [ -n $START_SCRIPT ]; then
  service docker start
  [ $DEBUG ] && tail -f /var/log/docker.log &

  curl -s $START_SCRIPT | /bin/bash
else
  echo "You need to pass in a START_SCRIPT url"
  exit 1
fi
