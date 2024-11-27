#!/bin/bash
download_dir="~/downloads"
for file in file1.zip file2.tar.gz file3.pdf; do
  if [ -f "$download_dir/$file" ]; then
    echo "File $file downloaded successfully to $download_dir"
  else
    echo "File $file not found in $download_dir"
    exit 1
  fi
done
exit 0