#!/bin/bash
if grep -q "^\[shared\]" /etc/samba/smb.conf; then
  exit 0
else
  echo "The new Samba share 'shared' is not configured in the smb.conf file."
  exit 1
fi