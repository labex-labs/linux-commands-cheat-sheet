#!/bin/bash
crontab -l | grep -q '* * * * * /home/labex/project/hello.sh'
if [ $? -eq 0 ]; then
  exit 1
fi
crontab -l | grep -q '*/5 * * * * /home/labex/project/backup.sh'
if [ $? -ne 0 ]; then
  exit 1
fi