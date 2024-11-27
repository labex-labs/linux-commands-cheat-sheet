#!/bin/bash
if [ "$(ls -l ~/project/another_file.txt | awk '{print $1}')" == "-rw-rw-r--" ] && \
   [ "$(ls -l ~/project/another_directory | awk '{print $1}')" == "drwxrwxr-x" ]; then
  exit 0
else
  echo "The permissions of the new files and directories are not as expected"
  exit 1
fi