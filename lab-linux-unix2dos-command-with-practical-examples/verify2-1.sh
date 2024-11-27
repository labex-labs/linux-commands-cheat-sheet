#!/bin/bash
for file in sample_unix*.txt; do
  if ! grep -q $'\r$' "$file"; then
    echo "The file $file was not converted correctly using the unix2dos command."
    exit 1
  fi
done
exit 0