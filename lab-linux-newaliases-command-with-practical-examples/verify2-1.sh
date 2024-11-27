#!/bin/bash
if grep -q 'info: labex' /etc/aliases; then
  echo "The new 'info' email alias was created successfully."
  exit 0
else
  echo "The new 'info' email alias was not created."
  exit 1
fi