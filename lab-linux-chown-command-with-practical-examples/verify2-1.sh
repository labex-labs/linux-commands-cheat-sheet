#!/bin/bash
file_path="~/project/dir1/file.txt"
if [ "$(ls -l "$file_path" | awk '{print $3":"$4}')" != "user1:group1" ]; then
  exit 1
fi
exit 0