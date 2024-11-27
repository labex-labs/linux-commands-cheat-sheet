#!/bin/bash
if grep -q "dmesg" /tmp/console.log; then
  exit 0
else
  echo "The console output has not been redirected to the file."
  exit 1
fi