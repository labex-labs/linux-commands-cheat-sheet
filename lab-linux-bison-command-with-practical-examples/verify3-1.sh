#!/bin/bash
if ./example <<< "abc" 2>&1 | grep -q "syntax error, unexpected error, expecting NUM"; then
  echo "Error handling works correctly"
else
  echo "Error handling does not work as expected"
  exit 1
fi

if ./example <<< "123" | grep -q "Received number: 123"; then
  echo "Parser still works correctly with valid input"
else
  echo "Parser does not work correctly with valid input"
  exit 1
fi