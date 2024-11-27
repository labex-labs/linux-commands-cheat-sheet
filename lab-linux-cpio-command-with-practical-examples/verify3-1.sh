#!/bin/bash
if ! [ -f ~/project/sample_archive.cpio ]; then
  exit 1
fi
if ! cpio -t < ~/project/sample_archive.cpio | grep -q "file1.txt"; then
  exit 1
fi
if ! cpio -t < ~/project/sample_archive.cpio | grep -q "file2.txt"; then
  exit 1
fi
if ! cpio -t < ~/project/sample_archive.cpio | grep -q "file3.txt"; then
  exit 1
fi
if cpio -t < ~/project/sample_archive.cpio | grep -q "file4.txt"; then
  exit 1
fi
if cpio -t < ~/project/sample_archive.cpio | grep -q "file5.txt"; then
  exit 1
fi