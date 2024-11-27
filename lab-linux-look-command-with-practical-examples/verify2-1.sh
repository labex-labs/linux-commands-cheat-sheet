#!/bin/bash
if ! look fox ~/project/sample.txt | grep -q "fox"; then
  exit 1
fi
echo "Verification passed!"
exit 0