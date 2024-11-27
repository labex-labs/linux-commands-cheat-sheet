#!/bin/bash
touch ~/project/important.txt
echo "This is an important file" > ~/project/important.txt
sudo chattr +i ~/project/important.txt
if rm ~/project/important.txt 2>/dev/null; then
  echo "Failed to protect important.txt with immutable attribute"
  exit 1
fi
if echo "Trying to modify the file" > ~/project/important.txt 2>/dev/null; then
  echo "Failed to protect important.txt with immutable attribute"
  exit 1
fi
sudo chattr -i ~/project/important.txt
echo "File protection with immutable attribute verified successfully"
exit 0