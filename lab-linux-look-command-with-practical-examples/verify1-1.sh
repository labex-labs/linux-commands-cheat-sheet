#!/bin/bash
if ! look apple | grep -q "apple"; then
  exit 1
fi
if ! look -f apple ~/project/words.txt | grep -qi "apple"; then
  exit 1
fi
if ! look -n 5 app ~/project/words.txt | wc -l | grep -q "5"; then
  exit 1
fi
echo "Verification passed!"
exit 0