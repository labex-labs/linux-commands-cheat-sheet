#!/bin/bash
unzip -l my_archive.zip | grep -q "file1.txt"
if [ $? -eq 0 ]; then
  unzip -l my_archive.zip | grep -q "file2.txt"
  if [ $? -eq 0 ]; then
    exit 0
  else
    echo "The zip archive 'my_archive.zip' does not contain 'file2.txt'."
    exit 1
  fi
else
  echo "The zip archive 'my_archive.zip' does not contain 'file1.txt'."
  exit 1
fi