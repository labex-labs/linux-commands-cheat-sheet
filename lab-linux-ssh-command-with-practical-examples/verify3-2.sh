#!/bin/bash
if test -f ~/project/test_file.txt; then
  exit 0
else
  echo "Failed to transfer file from remote to local using SCP."
  exit 1
fi