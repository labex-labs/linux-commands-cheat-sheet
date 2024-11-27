#!/bin/bash
if ! look "quick brown" ~/project/sample.txt | grep -q "quick brown"; then
  exit 1
fi
echo "Verification passed!"
exit 0