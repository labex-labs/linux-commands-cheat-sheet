#!/bin/bash
if grep -q 'testgroup' /etc/group; then
  echo "The 'testgroup' group still exists in the system"
  exit 1
else
  echo "The 'testgroup' group has been successfully removed"
  exit 0
fi