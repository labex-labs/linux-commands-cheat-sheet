#!/bin/bash
temp_file=$(mktemp --mode=0600 /tmp/myfile.XXXXXX)
if [ -f "$temp_file" ]; then
  permissions=$(stat -c "%a" "$temp_file")
  if [ "$permissions" = "600" ]; then
    echo "Temporary file created with secure permissions: $temp_file"
    exit 0
  else
    echo "Temporary file does not have the expected permissions: $temp_file"
    exit 1
  fi
else
  echo "Failed to create temporary file"
  exit 1
fi