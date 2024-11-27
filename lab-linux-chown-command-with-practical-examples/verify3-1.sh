#!/bin/bash
dir_path="~/project/dir2"
if [ "$(ls -l "$dir_path" | awk '{print $3":"$4}')" != "user3:group3" ]; then
  exit 1
fi
if [ "$(ls -l "$dir_path/file1.txt" | awk '{print $3":"$4}')" != "user3:group3" ]; then
  exit 1
fi
if [ "$(ls -l "$dir_path/subdir1" | awk '{print $3":"$4}')" != "user3:group3" ]; then
  exit 1
fi
if [ "$(ls -l "$dir_path/subdir1/file2.txt" | awk '{print $3":"$4}')" != "user3:group3" ]; then
  exit 1
fi
exit 0