#!/bin/bash
if ! look -f over ~/project/employees.txt | grep -E '[0-9]+\,[0-9]+' | awk -F, '{print $1, "$" $2}' | grep -q "over \$50,000"; then
  exit 1
fi
echo "Verification passed!"
exit 0