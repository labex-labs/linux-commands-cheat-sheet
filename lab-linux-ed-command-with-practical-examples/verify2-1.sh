#!/bin/bash
if [ -f ~/project/example.txt ]; then
  if grep -q "This is the updated first line." ~/project/example.txt; then
    if grep -q "This is the third line." ~/project/example.txt; then
      if ! grep -q "This is the second line." ~/project/example.txt; then
        exit 0
      else
        echo "The second line was not deleted."
        exit 1
      fi
    else
      echo "The third line is missing."
      exit 1
    fi
  else
    echo "The first line was not updated."
    exit 1
  fi
else
  echo "The file example.txt does not exist."
  exit 1
fi