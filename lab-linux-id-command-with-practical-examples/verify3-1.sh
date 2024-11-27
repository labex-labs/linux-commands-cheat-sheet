#!/bin/bash
if id -un | grep -q 'labex' && id -gn | grep -q 'labex'; then
  exit 0
else
  echo "The output of the 'id' command with options does not match the expected format."
  exit 1
fi