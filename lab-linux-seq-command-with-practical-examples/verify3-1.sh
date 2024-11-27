#!/bin/bash
if seq -f "Value: %.2f" 1 0.5 3 | grep -q "Value: 1.00\nValue: 1.50\nValue: 2.00\nValue: 2.50\nValue: 3.00"; then
  exit 0
else
  echo "The output of 'seq -f \"Value: %.2f\" 1 0.5 3' does not match the expected format."
  exit 1
fi