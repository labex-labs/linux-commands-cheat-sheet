#!/bin/bash
if atq | grep -q "labex"; then
  exit 0
else
  echo "No scheduled jobs found for the 'labex' user."
  exit 1
fi