#!/bin/bash
touch file1.txt file2.txt file3.txt
mkdir dir1 dir2 dir3

if ! sudo mattrib -h file1.txt file2.txt file3.txt 2>/dev/null; then
  echo "Failed to set hidden attribute on files"
  exit 1
fi
for file in file1.txt file2.txt file3.txt; do
  if ! ls -a | grep -q "\.${file}"; then
    echo "$file is not hidden"
    exit 1
  fi
done

if ! sudo mattrib -r dir1 dir2 dir3 2>/dev/null; then
  echo "Failed to set read-only attribute on directories"
  exit 1
fi
for dir in dir1 dir2 dir3; do
  if ! ls -l | grep -q "dr-xr-xr-x.*$dir"; then
    echo "$dir is not read-only"
    exit 1
  fi
done

echo "Successfully managed attributes for multiple files and directories"
exit 0