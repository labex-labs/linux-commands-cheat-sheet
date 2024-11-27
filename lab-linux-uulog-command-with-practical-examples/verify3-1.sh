#!/bin/bash
if sudo uulog -p err | grep -q "error"; then
  exit 0
else
  echo "The uulog command did not display error-level log entries as expected."
  exit 1
fi