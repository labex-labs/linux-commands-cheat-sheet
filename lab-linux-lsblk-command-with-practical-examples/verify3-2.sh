#!/bin/bash
if lsblk --json | grep -q "blockdevices"; then
  exit 0
else
  echo "The lsblk --json command did not display the expected JSON output."
  exit 1
fi