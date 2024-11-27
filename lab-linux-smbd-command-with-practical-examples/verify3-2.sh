#!/bin/bash
if sudo ls -ld /home/labex/project/shared | grep -q "labex labex"; then
  exit 0
else
  echo "The permissions on the /home/labex/project/shared directory are not set correctly."
  exit 1
fi