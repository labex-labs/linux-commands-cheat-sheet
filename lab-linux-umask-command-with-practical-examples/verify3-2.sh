#!/bin/bash
if [ "$(ls -l ~/project/shared_directory | awk '{print $1}')" == "drwxrwx---" ] && \
   [ "$(ls -l ~/project/shared_file.txt | awk '{print $1}')" == "-rw-rw----" ]; then
  exit 0
else
  echo "The permissions of the shared directory and file are not as expected"
  exit 1
fi