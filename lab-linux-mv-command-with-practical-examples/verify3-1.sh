#!/bin/bash
if [ -f ~/project/new_dir/file1.txt ] && \
   [ -f ~/project/new_dir/file2.txt ] && \
   [ -f ~/project/new_dir/file3.txt ]; then
  exit 0
else
  exit 1
fi