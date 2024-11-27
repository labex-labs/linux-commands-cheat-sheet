#!/bin/bash
if crontab -l | grep "0 2 \* \* \* /home/labex/project/backup.sh" > /dev/null; then
  exit 0
else
  exit 1
fi