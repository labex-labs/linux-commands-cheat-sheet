#!/bin/bash
if sudo chage -l labex | grep -q "Account expires.*never"; then
  exit 0
else
  exit 1
fi