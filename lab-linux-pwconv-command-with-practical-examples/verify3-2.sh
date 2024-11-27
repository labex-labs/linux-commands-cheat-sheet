#!/bin/bash
if grep -q 'newuser2:x:' /etc/passwd; then
  exit 0
else
  echo "The password field for the newuser2 account in /etc/passwd is not 'x'. Please troubleshoot the password conversion issue."
  exit 1
fi