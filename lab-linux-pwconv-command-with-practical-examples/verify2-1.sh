#!/bin/bash
if id newuser &> /dev/null; then
  exit 0
else
  echo "The newuser account does not exist. Please create the newuser account."
  exit 1
fi