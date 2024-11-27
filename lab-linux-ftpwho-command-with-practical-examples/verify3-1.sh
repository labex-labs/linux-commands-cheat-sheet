#!/bin/bash
if sudo ftpwho | grep -q "labex" && sudo ftpwho | grep -q "admin"; then
  exit 0
else
  echo "The ftpwho command output did not contain the expected user information."
  exit 1
fi