#!/bin/bash
signal_level=$(sudo iwconfig wlan0 | grep "Signal level" | awk -F'=' '{print $2}' | awk -F' ' '{print $1}')
if [ "$signal_level" -gt "-70" ]; then
  exit 0
else
  echo "The wireless signal level is too low (less than -70 dBm)."
  exit 1
fi