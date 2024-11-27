#!/bin/bash
min_days=$(sudo chage -l labex | grep "Minimum number of days between password change" | awk '{print $6}')
max_days=$(sudo chage -l labex | grep "Maximum number of days between password change" | awk '{print $6}')
warn_days=$(sudo chage -l labex | grep "Number of days of warning before password expires" | awk '{print $8}')
if [[ "$min_days" == "7" ]] && [[ "$max_days" == "90" ]] && [[ "$warn_days" == "7" ]]; then
  exit 0
else
  echo "The password expiration policy for the labex user is not set as expected."
  exit 1
fi