#!/bin/bash
if id newuser | grep -q "New User"; then
  if sudo -u newuser true 2>/dev/null; then
    exit 0
  else
    echo "User 'newuser' is still locked."
    exit 1
  fi
else
  echo "User 'newuser' properties were not updated correctly."
  exit 1
fi