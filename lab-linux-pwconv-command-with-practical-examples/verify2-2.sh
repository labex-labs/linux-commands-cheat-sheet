#!/bin/bash
if grep -q 'newuser:' /etc/shadow; then
  exit 0
else
  echo "The password information for the newuser account is not found in /etc/shadow. Please run the pwconv command."
  exit 1
fi