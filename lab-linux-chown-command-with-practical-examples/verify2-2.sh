#!/bin/bash
dir_path="~/project/dir1"
if [ "$(ls -l "$dir_path" | awk '{print $3":"$4}')" != "user2:group2" ]; then
  exit 1
fi
exit 0