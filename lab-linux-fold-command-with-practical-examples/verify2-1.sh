#!/bin/bash
if ! fold -w 40 example.txt | grep -q "be folded to fit"; then
  exit 1
fi
if ! fold -w 20 example.txt | grep -q "certain"; then
  exit 1
fi