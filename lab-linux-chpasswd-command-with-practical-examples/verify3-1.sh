#!/bin/bash
if sudo grep -q 'labex:newpassword1' /etc/shadow && sudo grep -q 'labuser:newpassword2' /etc/shadow; then
  echo "Passwords changed successfully using the script"
  exit 0
else
  echo "Failed to change passwords using the script"
  exit 1
fi