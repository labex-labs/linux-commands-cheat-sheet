#!/bin/bash
if dir -l | grep -q "drwxr-xr-x"; then
  exit 0
else
  echo "The dir command with the -l option did not display the long-format listing correctly."
  exit 1
fi