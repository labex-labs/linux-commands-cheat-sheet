#!/bin/bash
if sudo smbpasswd -L -u labex | grep -q "Account Flags"; then
  exit 0
else
  echo "The Samba user 'labex' is not configured properly."
  exit 1
fi