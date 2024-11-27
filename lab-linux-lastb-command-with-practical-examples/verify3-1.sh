#!/bin/bash
if sudo lastb -n 10 | grep -q "labex"; then
  exit 0
else
  echo "The lastb command output does not contain the expected failed login attempts for the 'labex' user."
  exit 1
fi