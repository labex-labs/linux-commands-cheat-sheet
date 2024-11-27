#!/bin/bash
if [ -f ~/project/example.txt ]; then
  if grep -q "This is the updated first line." ~/project/example.txt; then
    if grep -q "This is the third line." ~/project/example.txt; then
      if grep -q "This is the first line of example2.txt." ~/project/example.txt; then
        if grep -q "This is the second line of example2.txt." ~/project/example.txt; then
          if grep -q "This is the third line of example2.txt." ~/project/example.txt; then
            exit 0
          else
            echo "The third line of example2.txt was not appended."
            exit 1
          fi
        else
          echo "The second line of example2.txt was not appended."
          exit 1
        fi
      else
        echo "The first line of example2.txt was not appended."
        exit 1
      fi
    else
      echo "The third line of example.txt is missing."
      exit 1
    fi
  else
    echo "The updated first line of example.txt is missing."
    exit 1
  fi
else
  echo "The file example.txt does not exist."
  exit 1
fi