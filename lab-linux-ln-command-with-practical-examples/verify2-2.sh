#!/bin/bash
echo "This is an updated file." > file1.txt
if ! cmp -s file1.txt file1_hardlink.txt; then
  echo "Error: Changes to file1.txt are not reflected in file1_hardlink.txt."
  exit 1
fi
echo "Verification passed: Changes to the original file are reflected in the hard link."
exit 0