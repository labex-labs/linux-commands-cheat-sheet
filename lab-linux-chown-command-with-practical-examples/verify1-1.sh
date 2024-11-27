#!/bin/bash
file_path="~/project/file.txt"
if [ "$(ls -l "$file_path" | awk '{print $3":"$4}')" != "labex:labex" ]; then
  exit 1
fi
if [ "$(ls -l "$file_path" | awk '{print $1}')" != "-rw-r--r--" ]; then
  exit 1
fi
exit 0