#!/bin/bash
if sudo iwconfig | grep -q "wlan0"; then
  exit 0
else
  echo "The iwconfig command did not show any wireless network interface."
  exit 1
fi