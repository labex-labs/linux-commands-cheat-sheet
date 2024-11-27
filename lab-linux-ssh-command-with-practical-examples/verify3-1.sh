#!/bin/bash
if ssh labex@localhost test -f ~/project/test_file.txt; then
  exit 0
else
  echo "Failed to transfer file from local to remote using SCP."
  exit 1
fi