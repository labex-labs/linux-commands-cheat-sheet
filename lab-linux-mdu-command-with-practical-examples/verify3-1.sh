#!/bin/bash
if mdu -x ~/project/temp -x ~/project/backup ~/project | grep -q '60K'; then
  exit 0
else
  echo "Failed to correctly exclude the ~/project/temp and ~/project/backup directories from the mdu command."
  exit 1
fi