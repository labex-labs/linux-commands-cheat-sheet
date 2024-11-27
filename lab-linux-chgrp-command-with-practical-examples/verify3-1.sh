#!/bin/bash
if [ "$(stat -c '%G' ~/project/file1.txt)" != "admin" ] || [ "$(stat -c '%G' ~/project/file2.txt)" != "admin" ]; then
  exit 1
fi