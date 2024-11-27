#!/bin/bash
if [ ! -L file2_symlink.txt ]; then
  echo "Error: file2_symlink.txt is not a symbolic link."
  exit 1
fi
if [ "$(readlink file2_symlink.txt)" != "file2.txt" ]; then
  echo "Error: file2_symlink.txt does not point to file2.txt."
  exit 1
fi
echo "Verification passed: Symbolic link created successfully."
exit 0