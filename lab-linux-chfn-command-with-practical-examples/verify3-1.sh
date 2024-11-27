#!/bin/bash
if [ "$(sudo chfn -f | grep -o "Labex User")" != "Labex User" ]; then
  exit 1
fi
if [ "$(sudo chfn -f | grep -o "Office")" != "Office" ]; then
  exit 1
fi
if [ "$(sudo chfn -f | grep -o "Office Phone")" != "Office Phone" ]; then
  exit 1
fi
if [ "$(sudo chfn -f | grep -o "Home Phone")" != "Home Phone" ]; then
  exit 1
fi
if [ "$(sudo chfn -f | grep -o "Other")" != "Other" ]; then
  exit 1
fi