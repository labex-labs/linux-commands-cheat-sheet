#!/bin/bash
# Create sample compressed files with differences
echo "This is the content of file1.gz." | gzip > file1.gz
echo "This is the different content of file2.gz." | gzip > file2.gz

# Use zdiff to identify the differences
if ! zdiff file1.gz file2.gz | grep -q "1c1"; then
  echo "The zdiff command did not correctly identify the differences between the compressed files."
  exit 1
fi

echo "The zdiff command successfully identified the differences between the compressed files."
exit 0