#!/bin/bash
if git branch | grep -q "feature/new-page"; then
  if git log | grep -q "Add new line to test.txt"; then
    if ! git log | grep -q "feature/new-page"; then
      exit 0
    else
      echo "Changes from the feature/new-page branch are present in the master branch"
      exit 1
    fi
  else
    echo "Commit with message 'Add new line to test.txt' not found"
    exit 1
  fi
else
  echo "feature/new-page branch not found"
  exit 1
fi