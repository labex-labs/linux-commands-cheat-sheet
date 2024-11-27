#!/bin/bash
if ! output=$(set); then
  echo "Failed to run the set command"
  exit 1
fi
if ! echo "$output" | grep -q "SHELL=/bin/bash"; then
  echo "The SHELL variable is not set correctly"
  exit 1
fi
echo "Verification passed"
exit 0