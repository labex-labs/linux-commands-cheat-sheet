#!/bin/bash
if [ "$(stat -c %Y ~/project/existing_file.txt)" -gt "$(date +%s --date '-1 minute')" ]; then
  exit 0
else
  exit 1
fi