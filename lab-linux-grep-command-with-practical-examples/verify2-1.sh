#!/bin/bash
if grep -Eq "dog.*lazy|lazy.*dog" sample.txt && grep -q "dog" sample.txt | grep -qv "lazy"; then
  exit 0
else
  exit 1
fi