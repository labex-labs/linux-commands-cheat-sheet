#!/bin/bash
if grep -q "^\[share\]" /etc/samba/smb.conf; then
  exit 0
else
  echo "The Samba share configuration is missing from the smb.conf file."
  exit 1
fi