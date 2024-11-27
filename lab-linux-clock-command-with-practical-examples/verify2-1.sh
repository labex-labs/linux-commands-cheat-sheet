#!/bin/bash
current_date=$(clock | grep "The current date is:" | awk -F': ' '{print $2}')
current_time=$(clock | grep "The current time is:" | awk -F': ' '{print $2}')
if [[ "$current_date" == "2023-04-19" ]] && [[ "$current_time" == "10:00:00" ]]; then
  exit 0
else
  echo "The current date and time do not match the expected values."
  exit 1
fi