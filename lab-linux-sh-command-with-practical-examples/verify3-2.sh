#!/bin/bash
if [ -f ~/project/for_loop.sh ] && grep -q "for i in 1 2 3 4 5; do" ~/project/for_loop.sh && grep -q "echo \"Iteration \$i\"" ~/project/for_loop.sh; then
  exit 0
else
  exit 1
fi