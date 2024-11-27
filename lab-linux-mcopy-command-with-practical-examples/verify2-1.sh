#!/bin/bash
if ! mcopy -s ~/project/source_dir a: &> /dev/null; then
  exit 1
fi
if ! ls a: | grep -q 'file1.txt'; then
  exit 1
fi
if ! ls a: | grep -q 'file2.txt'; then
  exit 1
fi