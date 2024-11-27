#!/bin/bash
if ! crontab -l | grep -q "sync_time.sh"; then
  exit 1
fi
if ! sudo tail -n 10 /var/log/syslog | grep -q "rdate"; then
  exit 1
fi
exit 0