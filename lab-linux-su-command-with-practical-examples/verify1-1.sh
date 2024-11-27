#!/bin/bash
if [ "$(whoami)" != "root" ]; then
  echo "Failed to switch to root user"
  exit 1
fi