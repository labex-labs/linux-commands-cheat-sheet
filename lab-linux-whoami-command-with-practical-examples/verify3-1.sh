#!/bin/bash
if [ "$(./check_user_script.sh)" == $'The current user is: labex\nYou are the labex user.' ]; then
  exit 0
else
  echo "The whoami command in the script did not work as expected"
  exit 1
fi