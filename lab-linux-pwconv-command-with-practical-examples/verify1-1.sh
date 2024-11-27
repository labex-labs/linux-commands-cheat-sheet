#!/bin/bash
if [ -f /etc/shadow ]; then
  exit 0
else
  echo "The /etc/shadow file does not exist. Please run the pwconv command."
  exit 1
fi