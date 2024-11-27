#!/bin/bash
if grep -q "Defaults timestamp_timeout=5" /etc/sudoers; then
  exit 0
else
  echo "The sudo timeout is not set correctly"
  exit 1
fi