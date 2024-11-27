#!/bin/bash
if grep -q 'newuser2:' /etc/shadow; then
  exit 0
else
  echo "The password information for the newuser2 account is not found in /etc/shadow. Please troubleshoot the password conversion issue."
  exit 1
fi