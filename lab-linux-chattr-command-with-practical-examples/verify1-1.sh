#!/bin/bash
if ! sudo chattr +i file.txt 2>/dev/null; then
  echo "Failed to set the immutable attribute on file.txt"
  exit 1
fi
if ! sudo chattr -i file.txt 2>/dev/null; then
  echo "Failed to remove the immutable attribute from file.txt"
  exit 1
fi
if ! sudo chattr +a ~/project/logs 2>/dev/null; then
  echo "Failed to set the append-only attribute on ~/project/logs"
  exit 1
fi
if ! sudo chattr -a ~/project/logs 2>/dev/null; then
  echo "Failed to remove the append-only attribute from ~/project/logs"
  exit 1
fi
echo "Chattr command usage verified successfully"
exit 0