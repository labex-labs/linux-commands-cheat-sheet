#!/bin/bash
crontab -l | grep -q '* * * * * /home/labex/project/hello.sh'
if [ $? -ne 0 ]; then
  exit 1
fi