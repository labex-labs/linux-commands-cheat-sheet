#!/bin/bash
if [ ! -f ~/project/compressed/file1.txt ]; then
  echo "Error: file1.txt not found."
  exit 1
fi
if [ ! -f ~/project/compressed/file2.txt ]; then
  echo "Error: file2.txt not found."
  exit 1
fi
if [ ! -f ~/project/compressed/subdir/file3.txt ]; then
  echo "Error: file3.txt not found."
  exit 1
fi
if grep -q "This is a compressed file." ~/project/compressed/file1.txt && \
   grep -q "This is another compressed file." ~/project/compressed/file2.txt && \
   grep -q "This is a compressed file in a subdirectory." ~/project/compressed/subdir/file3.txt; then
  echo "Verification passed: All files decompressed successfully."
  exit 0
else
  echo "Error: File content does not match expected."
  exit 1
fi