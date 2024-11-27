#!/bin/bash
if ! sudo mattrib -r example.txt 2>/dev/null; then
  echo "Failed to set read-only attribute on example.txt"
  exit 1
fi
if ! sudo mattrib -c example.txt 2>/dev/null; then
  echo "Failed to clear read-only attribute on example.txt"
  exit 1
fi
echo "Successfully used mattrib command to modify file attributes"
exit 0