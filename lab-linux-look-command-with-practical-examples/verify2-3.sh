#!/bin/bash
if ! look -f "the" ~/project/sample.txt | grep -qi "the"; then
  exit 1
fi
echo "Verification passed!"
exit 0