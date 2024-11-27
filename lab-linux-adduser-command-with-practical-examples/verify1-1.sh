#!/bin/bash
if id newuser &> /dev/null; then
  exit 0
else
  echo "User 'newuser' not found."
  exit 1
fi