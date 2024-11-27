#!/bin/bash
if sudo -u newuser ls -l /opt/myapp &> /dev/null; then
  exit 0
else
  echo "User 'newuser' does not have access to /opt/myapp directory."
  exit 1
fi