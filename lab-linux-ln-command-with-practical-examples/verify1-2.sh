#!/bin/bash
if [ ! -L file1_symlink.txt ]; then
  echo "Error: file1_symlink.txt is not a symbolic link."
  exit 1
fi
if [ "$(readlink file1_symlink.txt)" != "file1.txt" ]; then
  echo "Error: file1_symlink.txt does not point to file1.txt."
  exit 1
fi
echo "Verification passed: Symbolic link created successfully."
exit 0