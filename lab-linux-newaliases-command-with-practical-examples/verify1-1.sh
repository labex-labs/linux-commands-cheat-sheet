#!/bin/bash
if [ -f /etc/aliases.db ]; then
  echo "The /etc/aliases.db file exists, indicating the newaliases command was successful."
  exit 0
else
  echo "The /etc/aliases.db file does not exist, indicating the newaliases command failed."
  exit 1
fi