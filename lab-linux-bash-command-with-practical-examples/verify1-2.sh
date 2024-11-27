#!/bin/bash
if [ "$(ls | grep -c 'file1.txt')" -eq 1 ] && \
   [ "$(ls | grep -c 'file2.txt')" -eq 1 ] && \
   [ "$(ls | grep -c 'newdir')" -eq 1 ] && \
   [ "$(ls | grep -c 'subdirectory')" -eq 1 ]; then
  exit 0
else
  echo "Directory contents do not match the expected state"
  exit 1
fi