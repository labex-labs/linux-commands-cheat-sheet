#!/bin/bash
if sudo grep -q "CRON\[" /var/log/cron.log; then
  exit 0
else
  echo "Cron logging is not working as expected."
  exit 1
fi