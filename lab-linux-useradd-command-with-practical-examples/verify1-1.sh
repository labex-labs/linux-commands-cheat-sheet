#!/bin/bash
if id newuser &> /dev/null; then
  exit 0
else
  echo "User 'newuser' was not created successfully."
  exit 1
fi