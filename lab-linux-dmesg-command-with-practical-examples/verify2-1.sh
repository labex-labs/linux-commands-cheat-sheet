#!/bin/bash
if sudo dmesg -l err | grep -q "error"; then
  exit 0
else
  echo "The dmesg command with -l err did not display any error messages."
  exit 1
fi