#!/bin/bash
if [ -f sample.txt ] && grep -q "This is a sample text file." sample.txt; then
  exit 0
else
  exit 1
fi