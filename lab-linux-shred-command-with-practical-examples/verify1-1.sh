#!/bin/bash
if [ -e sample_file.txt ]; then
  echo "Error: sample_file.txt still exists after shredding."
  exit 1
else
  echo "Success: sample_file.txt was shredded and removed."
  exit 0
fi