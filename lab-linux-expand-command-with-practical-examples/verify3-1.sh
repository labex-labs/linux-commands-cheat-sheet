#!/bin/bash
if ! expand file1.txt file2.txt file3.txt | grep -q "    "; then
  exit 1
fi
if ! diff file1.txt file1_expanded.txt | grep -q "Hello    World"; then
  exit 1
fi
if ! diff file2.txt file2_expanded.txt | grep -q "  This is a    test file"; then
  exit 1
fi
if ! diff file3.txt file3_expanded.txt | grep -q "A    B    C"; then
  exit 1
fi
exit 0