#!/bin/bash
temp_file=$(mktemp /tmp/myfile.XXXXXX)
if [ -f "$temp_file" ]; then
  echo "Temporary file created successfully: $temp_file"
  exit 0
else
  echo "Failed to create temporary file"
  exit 1
fi