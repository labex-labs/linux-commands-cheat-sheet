#!/bin/bash
expiration_date=$(sudo chage -l labex | grep "Password expires" | awk '{print $3, $4, $5}')
if [[ "$expiration_date" == "Apr 01, 2023" ]]; then
  exit 0
else
  echo "The password expiration date for the labex user is not set to Apr 01, 2023"
  exit 1
fi