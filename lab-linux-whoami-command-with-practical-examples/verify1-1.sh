#!/bin/bash
if [ "$(whoami)" == "labex" ]; then
  exit 0
else
  echo "The whoami command did not return the expected user 'labex'"
  exit 1
fi