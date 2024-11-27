#!/bin/bash
if ! sudo grpunconv &> /dev/null; then
  echo "Failed to run grpunconv command"
  exit 1
fi
echo "grpunconv command ran successfully"
exit 0