#!/bin/bash
for file in file1.zip file2.tar.gz file3.pdf; do
  if [ -f "$file" ]; then
    echo "File $file downloaded successfully"
  else
    echo "File $file not found"
    exit 1
  fi
done
exit 0