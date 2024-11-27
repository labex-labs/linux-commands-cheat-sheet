#!/bin/bash
if [ -f sample3.txt ] && grep -q "This is a third sample text file." sample3.txt && \
   [ -f sample4.txt ] && grep -q "This is a fourth sample text file." sample4.txt; then
  exit 0
else
  exit 1
fi