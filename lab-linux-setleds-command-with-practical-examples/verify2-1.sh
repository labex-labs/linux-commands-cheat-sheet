#!/bin/bash
current_state=$(setleds -v | grep -o -E '[01]{8}')
if [ "$current_state" != "00000002" ]; then
  exit 1
fi