#!/bin/bash
if tac sample.log | grep -q "ERROR: Another error occurred."; then
  exit 0
else
  echo "The tac and grep commands did not find the last occurrence of 'ERROR' correctly."
  exit 1
fi