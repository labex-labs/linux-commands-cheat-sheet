#!/bin/bash
if sudo journalctl -o json | grep -q "\"_COMM\":"; then
  exit 0
else
  echo "Failed to view journalctl logs in JSON format"
  exit 1
fi