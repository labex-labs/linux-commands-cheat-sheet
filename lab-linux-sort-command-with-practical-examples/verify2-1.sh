#!/bin/bash
if [ "$(sort -t ',' -k 1 data2.txt)" != "$(echo -e 'Alice,28,female\nBob,35,male\nJane,30,female\nJohn,25,male')" ]; then
  exit 1
fi
exit 0