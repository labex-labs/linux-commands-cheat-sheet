#!/bin/bash
yes | dd of=/dev/null bs=1M count=10 > /dev/null 2>&1
if [ $? -eq 0 ]; then
  exit 0
else
  echo "The dd command with yes did not execute successfully."
  exit 1
fi