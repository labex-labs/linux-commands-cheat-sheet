#!/bin/bash
if [ -d "backups" ] && [ "$(ls -A backups)" ]; then
  exit 0
else
  echo "File backup verification failed."
  exit 1
fi