#!/bin/bash
if ! look app ~/project/words.txt | grep -q "^app"; then
  exit 1
fi
echo "Verification passed!"
exit 0