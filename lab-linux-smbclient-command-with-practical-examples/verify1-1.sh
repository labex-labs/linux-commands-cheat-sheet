#!/bin/bash
if command -v smbclient >/dev/null; then
  echo "smbclient is installed"
  exit 0
else
  echo "smbclient is not installed"
  exit 1
fi