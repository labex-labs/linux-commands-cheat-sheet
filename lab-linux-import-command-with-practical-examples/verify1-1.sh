#!/bin/bash
if ! command -v import > /dev/null; then
  echo "The import command is not available. Please check your environment."
  exit 1
fi
if ! man import | grep -q "Capture some or all of an X server screen"; then
  echo "The manual page for the import command does not match the expected content."
  exit 1
fi
echo "The import command is available and the manual page looks correct."
exit 0