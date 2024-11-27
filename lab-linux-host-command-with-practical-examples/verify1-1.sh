#!/bin/bash
if [[ "$(hostname)" == "ubuntu" ]]; then
  exit 0
else
  echo "The hostname is not set to 'ubuntu'"
  exit 1
fi