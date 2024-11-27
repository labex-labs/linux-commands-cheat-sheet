#!/bin/bash
if grep -q "Cron job ran at" ~/project/cron_output.log; then
  exit 0
else
  echo "The cron job is not running as expected."
  exit 1
fi