#!/bin/bash
if grep -q "This is an edited text." ~/project/sample.txt; then
  exit 0
else
  exit 1
fi