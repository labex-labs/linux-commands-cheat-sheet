#!/bin/bash
if atq | grep -q "labex"; then
  echo "Scheduled jobs still exist. Please remove all scheduled jobs."
  exit 1
else
  exit 0
fi