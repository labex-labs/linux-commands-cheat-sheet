#!/bin/bash
if dip connect 2>&1 | grep -q "Failed to connect to dial-up"; then
  exit 0
else
  echo "The dial-up connection was established successfully, but it should have failed"
  exit 1
fi