#!/bin/bash
if sudo -u newuser true 2>/dev/null; then
  exit 0
else
  echo "Password was not set correctly for user 'newuser'."
  exit 1
fi