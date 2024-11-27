#!/bin/bash
if ! tail -n 3 sample.txt | grep -q "Line 3"; then
  exit 1
fi
if ! tail -f sample.txt | grep -q "Line 5"; then
  exit 1
fi