#!/bin/bash
if sudo ftpwho | grep -q "labex"; then
  exit 0
else
  echo "The ftpwho command did not display any active FTP connections."
  exit 1
fi