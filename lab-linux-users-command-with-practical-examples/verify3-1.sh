#!/bin/bash
if ! sudo passwd --stdin newuser2 < /dev/null 2>&1 | grep -q "BAD PASSWORD"; then
  echo "Password policy not enforced correctly."
  exit 1
else
  exit 0
fi