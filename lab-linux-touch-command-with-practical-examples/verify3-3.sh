#!/bin/bash
if [ "$(stat -c %Y ~/project/existing_file.txt)" -eq "$(date -d '2023-04-01 10:30:00' +%s)" ]; then
  exit 0
else
  exit 1
fi