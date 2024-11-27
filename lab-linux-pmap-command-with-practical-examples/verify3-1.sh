#!/bin/bash
PROCESS_ID=$(pgrep -f leak.py)
if [ -z "$PROCESS_ID" ]; then
  exit 1
fi

INITIAL_MEMORY=$(sudo pmap -x $PROCESS_ID | grep "total" | awk '{print $2}')
sleep 60
FINAL_MEMORY=$(sudo pmap -x $PROCESS_ID | grep "total" | awk '{print $2}')

if (( FINAL_MEMORY > INITIAL_MEMORY + 100000 )); then
  exit 0
else
  exit 1
fi