#!/bin/bash
if [ "$(./check_user.sh)" == "The current user is: labex" ]; then
  exit 0
else
  echo "The whoami command in the script did not return the expected output"
  exit 1
fi