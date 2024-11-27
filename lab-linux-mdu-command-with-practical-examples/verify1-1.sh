#!/bin/bash
if mdu -h ~/project > /dev/null; then
  exit 0
else
  echo "Failed to use the mdu command with the -h option."
  exit 1
fi