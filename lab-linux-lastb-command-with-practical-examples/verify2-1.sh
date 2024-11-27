#!/bin/bash
if sudo lastb -d -n 5 | grep -q "tty1"; then
  exit 0
else
  echo "The lastb command output with the -d and -n options does not contain the expected terminal information."
  exit 1
fi