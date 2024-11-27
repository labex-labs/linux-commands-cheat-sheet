#!/bin/bash
if [ -f ~/project/hardlink.txt ] && [ "$(stat -c '%i' ~/project/file.txt)" = "$(stat -c '%i' ~/project/hardlink.txt)" ]; then
  echo "Hard link created successfully"
  exit 0
else
  echo "Hard link creation failed"
  exit 1
fi