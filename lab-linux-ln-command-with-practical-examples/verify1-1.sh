#!/bin/bash
if [ -L file1_hardlink.txt ]; then
  echo "Error: file1_hardlink.txt is a symbolic link, not a hard link."
  exit 1
fi
if ! cmp -s file1.txt file1_hardlink.txt; then
  echo "Error: file1.txt and file1_hardlink.txt do not have the same content."
  exit 1
fi
echo "Verification passed: Hard link created successfully."
exit 0