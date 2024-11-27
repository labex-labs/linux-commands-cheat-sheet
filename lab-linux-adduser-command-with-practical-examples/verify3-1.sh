#!/bin/bash
if id newuser | grep -q "groups=.*sudo"; then
  exit 0
else
  echo "User 'newuser' is not a member of the 'sudo' group."
  exit 1
fi