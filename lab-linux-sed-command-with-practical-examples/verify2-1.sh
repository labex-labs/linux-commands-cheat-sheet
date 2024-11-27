#!/bin/bash
if grep -q "This is an new text. Replace the new text with new text." sample.txt; then
  exit 0
else
  echo "The text substitution was not performed correctly."
  exit 1
fi