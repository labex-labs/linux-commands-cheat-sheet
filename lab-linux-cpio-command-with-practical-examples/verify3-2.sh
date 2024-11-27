#!/bin/bash
if ! [ -d ~/project/sample_dir ]; then
  exit 1
fi
if ! [ -f ~/project/sample_dir/file1.txt ]; then
  exit 1
fi
if ! [ -f ~/project/sample_dir/file2.txt ]; then
  exit 1
fi
if ! [ -f ~/project/sample_dir/file3.txt ]; then
  exit 1
fi
if [ -f ~/project/file4.txt ]; then
  exit 1
fi
if [ -f ~/project/file5.txt ]; then
  exit 1
fi