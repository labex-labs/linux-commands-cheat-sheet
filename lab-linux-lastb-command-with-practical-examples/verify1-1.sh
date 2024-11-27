#!/bin/bash
if sudo lastb | grep -q "labex"; then
  exit 0
else
  echo "The lastb command output does not contain the expected user 'labex'."
  exit 1
fi