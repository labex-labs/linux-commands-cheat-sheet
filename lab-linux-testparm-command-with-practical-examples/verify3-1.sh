#!/bin/bash
if sudo testparm -v | grep -q "log file = /var/log/samba/log.%m"; then
  exit 0
else
  echo "Samba configuration parameter 'log file' is not set as expected"
  exit 1
fi