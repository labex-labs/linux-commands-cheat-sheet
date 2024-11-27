#!/bin/bash
mkdir ~/project/test_dir
touch ~/project/test_dir/file1.txt ~/project/test_dir/file2.txt ~/project/test_dir/file3.txt
rm -rf ~/project/test_dir
if [ -d ~/project/test_dir ]; then
  exit 1
else
  exit 0
fi