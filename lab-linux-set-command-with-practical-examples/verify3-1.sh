#!/bin/bash
if ! output=$(set -o | grep MYENV_VAR); then
  echo "Failed to create the MYENV_VAR environment variable"
  exit 1
fi
if ! echo "$output" | grep -q "MYENV_VAR="; then
  echo "Failed to verify the MYENV_VAR environment variable"
  exit 1
fi
if output=$(set -o | grep READONLY_ENV_VAR); then
  echo "READONLY_ENV_VAR environment variable should be unset"
  exit 1
fi
echo "Verification passed"
exit 0