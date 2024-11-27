#!/bin/bash
if sudo uulog -n 5 | grep -q "Apr"; then
  exit 0
else
  echo "The uulog command did not display recent log entries as expected."
  exit 1
fi