#!/bin/bash
if ! sliplogin --help > /dev/null 2>&1; then
  exit 1
fi
echo "sliplogin command usage verified successfully."
exit 0