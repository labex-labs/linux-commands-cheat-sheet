#!/bin/bash
if sudo ftpwho -a | grep -q "labex"; then
  exit 0
else
  echo "The ftpwho command with the -a option did not display any active FTP connections."
  exit 1
fi