#!/bin/bash
if [ "$(ls -l ~/project/sensitive_file.txt | awk '{print $1}')" == "-rw-------" ]; then
  exit 0
else
  echo "The permissions of the sensitive file are not as expected"
  exit 1
fi