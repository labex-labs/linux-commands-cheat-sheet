#!/bin/bash
./set_caps_scroll.sh
current_state=$(setleds -v | grep -o -E '[01]{8}')
if [ "$current_state" != "00000005" ]; then
  exit 1
fi