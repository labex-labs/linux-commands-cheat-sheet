#!/bin/bash
if id newuser &> /dev/null; then
  exit 0
else
  echo "User 'newuser' does not exist."
  exit 1
fi