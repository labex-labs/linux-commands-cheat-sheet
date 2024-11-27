#!/bin/bash
if sudo grep -q "Cron job ran at" /var/mail/labex; then
  exit 0
else
  echo "Cron job email notifications are not working as expected."
  exit 1
fi