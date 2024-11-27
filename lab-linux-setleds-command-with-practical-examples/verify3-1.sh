#!/bin/bash
./toggle_num_lock.sh
current_state=$(setleds -v | grep -o -E '[01]{8}' | awk '{print substr($1,7,1)}')
if [ "$current_state" != "1" ]; then
  exit 1
fi