#!/bin/bash
if grep -q "This is a new text file." sample.txt; then
  exit 0
else
  echo "The text substitution was not performed correctly."
  exit 1
fi