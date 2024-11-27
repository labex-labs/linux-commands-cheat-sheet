#!/bin/bash
if [ "$(cat data2.txt | grep 'female' | sort -t ',' -k 2n)" != "$(echo -e 'Alice,28,female\nJane,30,female')" ]; then
  exit 1
fi
exit 0