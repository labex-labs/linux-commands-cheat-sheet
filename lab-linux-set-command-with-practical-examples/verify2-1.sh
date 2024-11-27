#!/bin/bash
if ! output=$(set | grep MYVAR); then
  echo "Failed to create the MYVAR variable"
  exit 1
fi
if ! echo "$output" | grep -q "MYVAR=\"Goodbye, World!\""; then
  echo "Failed to modify the MYVAR variable"
  exit 1
fi
if output=$(set | grep READONLY_VAR); then
  echo "READONLY_VAR variable should be unset"
  exit 1
fi
echo "Verification passed"
exit 0