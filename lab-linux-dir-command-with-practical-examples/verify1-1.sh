#!/bin/bash
if dir | grep -q "Desktop"; then
  exit 0
else
  echo "The dir command did not list the contents of the current directory correctly."
  exit 1
fi