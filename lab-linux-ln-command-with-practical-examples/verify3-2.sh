#!/bin/bash
if [ ! -L dir1_symlink ]; then
  echo "Error: dir1_symlink is not a symbolic link."
  exit 1
fi
if [ "$(readlink dir1_symlink)" != "dir1" ]; then
  echo "Error: dir1_symlink does not point to the dir1 directory."
  exit 1
fi
echo "Verification passed: Symbolic link to directory created successfully."
exit 0