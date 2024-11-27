#!/bin/bash
if systemctl is-active --quiet cron; then
  exit 0
else
  echo "The cron service is not running."
  exit 1
fi