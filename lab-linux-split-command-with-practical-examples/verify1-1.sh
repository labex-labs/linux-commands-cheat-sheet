#!/bin/bash
if ! split -l 100 large_file.txt split_ &> /dev/null; then
  echo "Failed to split the file by line count."
  exit 1
fi
if ! [ -f split_aa ] || ! [ -f split_ab ] || ! [ -f split_ac ]; then
  echo "The split command did not create the expected output files."
  exit 1
fi
echo "The split command was used successfully."