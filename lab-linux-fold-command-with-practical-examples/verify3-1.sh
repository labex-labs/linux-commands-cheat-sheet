#!/bin/bash
if ! cat example.txt | fold -w 40 | grep -q "certain"; then
  exit 1
fi
if ! grep "folded" example.txt | fold -w 40 | grep -q "should"; then
  exit 1
fi
if ! sed 's/fold/wrap/g' example.txt | fold -w 40 | grep -q "wrap"; then
  exit 1
fi