#!/bin/bash
lsmod_output=$(sudo lsmod)
if echo "$lsmod_output" | grep -q "Module\s\+Size\s\+Used by"; then
  exit 0
else
  echo "The lsmod command output does not match the expected format. Please check the output."
  exit 1
fi