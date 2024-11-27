#!/bin/bash
if mdu -h ~/project/documents | grep -q '36K'; then
  exit 0
else
  echo "Failed to correctly measure the disk usage of the ~/project/documents directory."
  exit 1
fi