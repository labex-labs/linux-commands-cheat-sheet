#!/bin/bash
if [ -f ~/project/new_dir/file1.txt ]; then
  exit 0
else
  exit 1
fi