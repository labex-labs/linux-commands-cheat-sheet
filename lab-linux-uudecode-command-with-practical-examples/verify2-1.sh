#!/bin/bash
if [ -f sample2.txt ] && grep -q "This is another sample text file." sample2.txt; then
  exit 0
else
  exit 1
fi