#!/bin/bash
if [ "$(hostname)" == "new-hostname" ]; then
  exit 0
else
  echo "The hostname is not set to 'new-hostname'"
  exit 1
fi