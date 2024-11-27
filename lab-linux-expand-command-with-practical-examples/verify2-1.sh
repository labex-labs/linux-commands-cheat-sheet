#!/bin/bash
if ! expand example.txt | grep -q "    "; then
  exit 1
fi
if ! diff example.txt expanded.txt | grep -q "Hello    World"; then
  exit 1
fi
exit 0