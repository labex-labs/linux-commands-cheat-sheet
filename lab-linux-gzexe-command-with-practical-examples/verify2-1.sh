#!/bin/bash
original_size=$(du -h ~/project/sample_executable.sh | awk '{print $1}')
compressed_size=$(du -h ~/project/sample_executable.sh.gz | awk '{print $1}')
if [[ "$compressed_size" < "$original_size" ]]; then
  exit 0
else
  echo "Compressed file size is not smaller than the original"
  exit 1
fi