#!/bin/bash
if grep -q "This line will not be executed." ~/project/script.sh; then
  echo "The script did not terminate correctly."
  exit 1
else
  echo "The script terminated correctly."
  exit 0
fi