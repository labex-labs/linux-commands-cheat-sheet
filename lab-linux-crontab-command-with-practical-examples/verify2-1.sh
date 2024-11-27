#!/bin/bash
crontab -l | grep -q '*/5 * * * * /home/labex/project/backup.sh'
if [ $? -ne 0 ]; then
  exit 1
fi