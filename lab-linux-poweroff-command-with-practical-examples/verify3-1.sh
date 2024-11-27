#!/bin/bash
if crontab -l | grep -q "poweroff"; then
  exit 0
else
  echo "The Cron job to automate system shutdown was not created."
  exit 1
fi