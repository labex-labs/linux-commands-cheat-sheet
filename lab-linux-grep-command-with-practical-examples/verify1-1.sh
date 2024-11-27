#!/bin/bash
if grep -q "fox" sample.txt && grep -qi "dog" sample.txt && grep -q "^The" sample.txt; then
  exit 0
else
  exit 1
fi