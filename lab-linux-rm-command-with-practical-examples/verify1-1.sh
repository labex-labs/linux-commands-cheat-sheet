#!/bin/bash
if [ -e ~/project/test_dir/file1.txt ] || [ -e ~/project/test_dir/file2.txt ] || [ -e ~/project/test_dir/file3.txt ]; then
  exit 1
else
  exit 0
fi