#!/bin/bash
if sudo grep -q 'labex:newpassword1' /etc/shadow; then
  echo "Password for user labex changed successfully"
  exit 0
else
  echo "Failed to change password for user labex"
  exit 1
fi