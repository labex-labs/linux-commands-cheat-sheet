#!/bin/bash
if ! [ -f ~/project/archive.cpio ]; then
  exit 1
fi
if ! cpio -t < ~/project/archive.cpio | grep -q "file1.txt"; then
  exit 1
fi
if ! cpio -t < ~/project/archive.cpio | grep -q "file2.txt"; then
  exit 1
fi