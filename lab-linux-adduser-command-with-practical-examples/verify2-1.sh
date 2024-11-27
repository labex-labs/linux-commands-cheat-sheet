#!/bin/bash
if sudo chage -l newuser | grep -q "Password expires.*Dec 31, 2023"; then
  exit 0
else
  echo "Password expiration date not set correctly."
  exit 1
fi