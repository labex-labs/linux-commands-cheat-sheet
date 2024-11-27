#!/bin/bash
for file in file1.txt file2.txt file3.txt; do
  if [ -e $file ]; then
    echo "Error: $file still exists after shredding."
    exit 1
  fi
done
echo "Success: All sample files were shredded and removed."
exit 0