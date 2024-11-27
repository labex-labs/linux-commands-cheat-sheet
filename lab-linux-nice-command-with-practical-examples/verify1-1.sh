#!/bin/bash
current_niceness=$(nice -n 0 echo $PPID)
if [[ $current_niceness -eq 0 ]]; then
  exit 0
else
  echo "The niceness value of the current shell process is not 0."
  exit 1
fi