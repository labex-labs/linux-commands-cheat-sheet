#!/bin/bash
if ! bzless moby_dick.txt.bz2 | grep -q 'Moby Dick'; then
  exit 1
fi
if ! bzless moby_dick.txt.bz2 | grep -c 'whale' | grep -q '^[0-9]*$'; then
  exit 1
fi