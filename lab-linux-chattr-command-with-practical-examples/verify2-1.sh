#!/bin/bash
touch ~/project/file.txt
sudo chattr +i ~/project/file.txt
if rm ~/project/file.txt 2>/dev/null; then
  echo "Failed to set the immutable attribute on file.txt"
  exit 1
fi
echo "Immutable attribute on file.txt verified successfully"
exit 0