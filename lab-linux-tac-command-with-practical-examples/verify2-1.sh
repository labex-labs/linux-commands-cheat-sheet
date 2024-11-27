#!/bin/bash
if tac sample.txt | grep -q "Line 4\nLine 3\nLine 2\nLine 1"; then
  exit 0
else
  echo "The tac command did not reverse the lines correctly."
  exit 1
fi