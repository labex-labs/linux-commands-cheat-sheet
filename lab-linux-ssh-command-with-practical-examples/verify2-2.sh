#!/bin/bash
if ssh labex@localhost ls -l ~/project | grep -q 'test.txt'; then
  exit 0
else
  echo "Failed to execute command on the remote server via SSH."
  exit 1
fi